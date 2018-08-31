package com.spring.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.ModelAndView;

import com.spring.api.IContactApi;
import com.spring.api.IUserApi;
import com.spring.entity.Contact;
import com.spring.entity.Sessionp;
import com.spring.entity.User;
import com.spring.entity.UserSession;
import com.spring.exception.ValidationError;
import com.spring.exception.ValidationException;
import com.spring.model.ContactModel;
import com.spring.model.ContactStatus;
import com.spring.model.LoginModel;
import com.spring.model.SessionModel;
import com.spring.repositories.SessionpRepository;
import com.spring.repositories.UserRepository;
import com.spring.repositories.UserSessionRepository;
import com.spring.session.SessionLoggingStrategy;
import com.spring.session.UserDetailsWrapper;
import com.spring.util.AuthenticationUtil;
import com.spring.util.Authorities;
import com.spring.util.ConvertUtil;
import com.spring.util.ValidationUtil;
import com.spring.validation.ContactValidator;
import com.spring.validation.LoginValidator;


@Controller
//@PropertySource("file:i18n/messages.properties")
public class DemoController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private UserRepository userRepository;
	private final AuthenticationManager authenticationManager;
	private final UserSessionRepository peopleSessionRepository;
	private final SessionLoggingStrategy sessionLoggingStrategy;
	private final IUserApi userApi;
	private final LoginValidator loginValidator;
	private final ContactValidator contactValidator;
	private final IContactApi contactApi;
	private final SessionpRepository sessionpRepository;


	@Autowired
    private Environment env;

	@ModelAttribute("login")
	public LoginModel getLoginModel() {
		return new LoginModel();
	}
	
	@ModelAttribute("contact")
	public ContactModel getContactModel() {
		return new ContactModel();
	}

	public DemoController(UserRepository userRepository, AuthenticationManager authenticationManager,
			UserSessionRepository peopleSessionRepository, SessionLoggingStrategy sessionLoggingStrategy,
			IUserApi userApi, LoginValidator loginValidator,ContactValidator contactValidator,IContactApi contactApi,
			SessionpRepository sessionpRepository) {
		super();
		this.userRepository = userRepository;
		this.authenticationManager = authenticationManager;
		this.peopleSessionRepository = peopleSessionRepository;
		this.sessionLoggingStrategy = sessionLoggingStrategy;
		this.userApi = userApi;
		this.loginValidator = loginValidator;
		this.contactValidator = contactValidator;
		this.contactApi = contactApi;
		this.sessionpRepository = sessionpRepository;
	}
	
	@RequestMapping(value = "/session", method = RequestMethod.GET)
	public List<Sessionp> getAllSessions() {
		Sessionp s1 = new Sessionp(1, "title1", "abbrevation1", "status1", 12, 12, "type1", 12, "publishedAuthenticated1",
				"publicViewPrivateSchedule1", "privateViewPrivateSchedule1", "cannotVieworSchedule1", false);
		Sessionp s2 = new Sessionp(1, "title2", "abbrevation2", "status2", 13, 13, "type2", 13, "publishedAuthenticated2",
				"publicViewPrivateSchedule2", "privateViewPrivateSchedule2", "cannotVieworSchedule2", true);
		Sessionp s3 = new Sessionp(1, "title3", "abbrevation3", "status3", 14, 14, "type3", 14, "publishedAuthenticated3",
				"publicViewPrivateSchedule3", "privateViewPrivateSchedule3", "cannotVieworSchedule3", false);
		Sessionp s4 = new Sessionp(1, "title4", "abbrevation4", "status4", 15, 15, "type4", 15, "publishedAuthenticated4",
				"publicViewPrivateSchedule4", "privateViewPrivateSchedule4", "cannotVieworSchedule4", true);
		List<Sessionp> sessions = new ArrayList<>();
		sessions.add(s1);
		sessions.add(s2);
		sessions.add(s3);
		sessions.add(s4);
		
		
		for(Sessionp s:sessions) {
			sessionpRepository.save(s);
		}

		return sessions;
	}

	@RequestMapping("/hello/{name}")
	String hello(@PathVariable String name) {
		logger.debug("in hello request mapping");
		return "Hello, " + name + "!";
	}

	@RequestMapping("/hi")
	String hi() {
		logger.debug("in hi request mapping");
		System.out.println("in hi request mapping");
		return "Hi !";
	}
	
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/ang")
	public String angular(HttpServletRequest request, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage, HttpServletResponse response) {

		try {
			throw new Exception();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/beautyShalon/angular";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/angular/*")
	public String angularrrr(HttpServletRequest request, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage, HttpServletResponse response) {
		return "/beautyShalon/angular";
	}
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/beautyShalon/{pageName}")
	public String getNatureVisit(@PathVariable("pageName") String pageName, HttpServletRequest req,
			HttpServletResponse responset, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage,
			@RequestParam(value = "statusMessage", required = false) String statusMessage,HttpServletResponse response) {
		if (AuthenticationUtil.getCurrentUser() != null) {
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			if (authority.contains(Authorities.ADMINISTRATOR)) {
				return "redirect:/";
			}
		}		
//		if(pageName.equals("contact")) {
//			model.addAttribute("contact", new ContactModel());
//		}
		modelMap.put("statusMessage", statusMessage);
		return "/beautyShalon/" + pageName;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/listContactMessages")
	public String listContactMessages(HttpServletRequest req,
			HttpServletResponse responset, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage,
			HttpServletResponse response) {
		if (AuthenticationUtil.getCurrentUser() != null) {
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			if (authority.contains(Authorities.ADMINISTRATOR)) {
				List<Contact> cont=contactApi.listAllContactMessages();
				model.addAttribute("contactMessages", cont);

				
				return "/beautyShalon/contactMessages";
			}else {
				return "redirect:/";
			}
		}else {
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/contactme")
	public String contactFormSubmit(@ModelAttribute("contact") ContactModel contact, HttpServletRequest request,
			HttpSession session, HttpServletResponse response, BindingResult result, ModelMap modelMap,
			Map<String, Object> map) {
		logger.debug("in contactme=====>");
		if (AuthenticationUtil.getCurrentUser() == null) {
			try {
				ValidationUtil.validate(contact, contactValidator);
			} catch (ValidationException e) {
				logger.debug("e=====>" + e.getErrors().toString());
				fillErrors(result, e.getErrors());
				return "/beautyShalon/contact";
			}
			contact.setContactStatus(ContactStatus.Requested);
			Contact cont=contactApi.saveContact(ConvertUtil.convertContactModeltoContact(contact));
			logger.debug("statusMessage=====>" + env.getProperty("contact.sucess"));
			modelMap.put("statusMessage", env.getProperty("contact.sucess"));
			return "redirect:/beautyShalon/contact";
		} else {
			return "redirect:/";
		}
	}
	
	
	

	@RequestMapping(method = RequestMethod.GET, value = "/login")
	public String loginSystem(HttpServletRequest request, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage, HttpServletResponse response) {
		if (AuthenticationUtil.getCurrentUser() != null) {
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			if (authority.contains(Authorities.ADMINISTRATOR)) {
				return "redirect:/";
			}
		}
		// modelMap.put("errormessage",
		// errormessage == null ? "" : messageSource.getMessage(errormessage, null,
		// Locale.ROOT));
		//// return "/FlightTravel/index";
		model.addAttribute("login", new LoginModel());
		return "/beautyShalon/login";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/logmein")
	public String manualLogin(@ModelAttribute("login") LoginModel login, HttpServletRequest request,
			HttpSession session, HttpServletResponse response, BindingResult result, ModelMap model,
			Map<String, Object> map) {
		if (AuthenticationUtil.getCurrentUser() == null) {
			try {
				ValidationUtil.validate(login, loginValidator);
			} catch (ValidationException e) {
				System.out.println("e=====>" + e.getErrors().toString());
				fillErrors(result, e.getErrors());
				return "/beautyShalon/login";
			}

			System.out.println("in autologin==>" + login.getUsername());
			User user = userApi.getUserWithUsername(login.getUsername());
			System.out.println("user==>" + user);
			Collection<GrantedAuthority> grantedAuths = AuthorityUtils
					.commaSeparatedStringToAuthorityList(user.getAuthority());
			UserDetailsWrapper udw = new UserDetailsWrapper(user, grantedAuths);
//			UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(udw, null,
//					grantedAuths);
//			System.out.println("token==>" + token);
//			token.setDetails(new WebAuthenticationDetails(request));
//			System.out.println("request==>" + request);
			Authentication auth = null;
			try {
				auth = new UsernamePasswordAuthenticationToken(udw, login.getPassword(), grantedAuths);
				// auth = new UsernamePasswordAuthenticationToken(username, null,grantedAuths);
				// auth = authenticationManager.authenticate(token);
				System.out.println("auth==>" + auth);

			} catch (Exception e) {
				System.out.println("e==>" + e);

			}
			SecurityContext securityContext = SecurityContextHolder.getContext();
			System.out.println("auth.isAuthenticated()==>" + auth.isAuthenticated());
			if (auth.isAuthenticated()) {
				System.out.println("Logging sucessfull");
				securityContext.setAuthentication(auth);
				System.out.println("securityContext==>" + securityContext);

				// SecurityContextHolder.getContext().setAuthentication(auth);
				// sessionRegistry.registerNewSession(request.getSession().getId(),
				// auth.getPrincipal());
				HttpSession sesssion = request.getSession(true);
				sesssion.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
				System.out.println("session==>" + session);
				System.out.println("SESSION ID=======>" + session.getId());
				sessionLoggingStrategy.onAuthentication(auth, request, response);
				System.out.println("sessionId==>" + RequestContextHolder.currentRequestAttributes().getSessionId());
				UserSession userSession = peopleSessionRepository
						.findByActiveSessionId(RequestContextHolder.currentRequestAttributes().getSessionId());
				System.out.println("userSession==>" + userSession);
				// logger.info("getSessionId==>" + userSession.getSessionId());
				// logger.debug("id==>" + userSession.getId());
				// People user = userApi.findUserById(userSession.getUser()
				// .getId());
			} else {
				System.out.println("Logging unsucessfull");
				SecurityContextHolder.getContext().setAuthentication(null);
			}
			System.out.println("in login user is==>" + AuthenticationUtil.getCurrentUser());
			System.out.println("in login user name is==>" + AuthenticationUtil.getCurrentUser().getUsername());
			System.out.println("SecurityContextHolder==>" + SecurityContextHolder.getContext().getAuthentication());
			return "redirect:/";

		} else {
			return "redirect:/";
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/")
	public String getHome(ModelMap modelMap, ModelAndView modelAndView,
			@RequestParam(value = "errormessage", required = false) String errormessage,
			@RequestParam(value = "infomessage", required = false) String infomessage,
			@RequestParam(value = "msg", required = false) String msg, HttpServletRequest request,
			HttpSession session) {
		logger.debug("Sthis is my first log==>" );
		
		
		logger.debug("SecurityContextHolder==>" + SecurityContextHolder.getContext().getAuthentication());
		logger.debug("in /==>" + AuthenticationUtil.getCurrentUser());
		logger.debug("AuthenticationUtil.getCurrentUser()==>" + AuthenticationUtil.getCurrentUser());
		if (AuthenticationUtil.getCurrentUser() != null) {
			System.out.println("Username ==>" + AuthenticationUtil.getCurrentUser().getUsername());
			session.setAttribute("currentUser", AuthenticationUtil.getCurrentUser());
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			// if (authority.contains(Authorities.ADMINISTRATOR)) {
			// logger.debug("admin login ==>");
			// return "/Main/adminLogin";
			// } else if (authority.contains(Authorities.AUTHENTICATED)) {
			// logger.debug("userlogin==>");
			// return "/Main/userLogin";
			// } else if (authority.contains(Authorities.USER)) {
			// logger.debug("userlogin==>");
			// return "/Main/userLogin";
			// }
			return "/beautyShalon/dashboard";
		}
		return "redirect:/main";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/main")
	public String getMain(HttpServletRequest request, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage, HttpServletResponse response) {
		logger.debug("AuthenticationUtil.getCurrentUser()==>" + AuthenticationUtil.getCurrentUser());
		if (AuthenticationUtil.getCurrentUser() != null) {
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			if (authority.contains(Authorities.ADMINISTRATOR)) {
				return "redirect:/";
			}
		}
		// modelMap.put("errormessage",
		// errormessage == null ? "" : messageSource.getMessage(errormessage, null,
		// Locale.ROOT));
		//// return "/FlightTravel/index";
		return "/beautyShalon/index";
	}

	

	@RequestMapping(method = RequestMethod.GET, value = "/dashboard")
	public String dashboard(HttpServletRequest request, ModelMap modelMap, Model model,
			@RequestParam(value = "errormessage", required = false) String errormessage, HttpServletResponse response) {
		if (AuthenticationUtil.getCurrentUser() != null) {
			String authority = AuthenticationUtil.getCurrentUser().getAuthority();
			if (authority.contains(Authorities.ADMINISTRATOR)) {
				return "redirect:/";
			}
		}
		// modelMap.put("errormessage",
		// errormessage == null ? "" : messageSource.getMessage(errormessage, null,
		// Locale.ROOT));
		//// return "/FlightTravel/index";
		return "/beautyShalon/dashboard";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/autologin/{username}")
	public String autologin(@PathVariable("username") String username, HttpServletRequest request, HttpSession session,
			HttpServletResponse response, ModelMap modelMap) {
		// throws ServletException, IOException, Exception
		// String userId = "";
		System.out.println("in autologin==>" + username);
		User user = userApi.getUserWithUsername(username);
		System.out.println("user==>" + user);
		Collection<GrantedAuthority> grantedAuths = AuthorityUtils
				.commaSeparatedStringToAuthorityList(user.getAuthority());
		UserDetailsWrapper udw = new UserDetailsWrapper(user, grantedAuths);
		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(udw, null, grantedAuths);
		System.out.println("token==>" + token);
		token.setDetails(new WebAuthenticationDetails(request));
		System.out.println("request==>" + request);
		Authentication auth = null;
		try {
			auth = new UsernamePasswordAuthenticationToken(udw, null, grantedAuths);
			// auth = new UsernamePasswordAuthenticationToken(username, null,grantedAuths);
			// auth = authenticationManager.authenticate(token);
			System.out.println("auth==>" + auth);

		} catch (Exception e) {
			System.out.println("e==>" + e);

		}
		SecurityContext securityContext = SecurityContextHolder.getContext();
		System.out.println("auth.isAuthenticated()==>" + auth.isAuthenticated());
		if (auth.isAuthenticated()) {
			System.out.println("Logging sucessfull");
			securityContext.setAuthentication(auth);
			System.out.println("securityContext==>" + securityContext);

			// SecurityContextHolder.getContext().setAuthentication(auth);
			// sessionRegistry.registerNewSession(request.getSession().getId(),
			// auth.getPrincipal());
			HttpSession sesssion = request.getSession(true);
			sesssion.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
			System.out.println("session==>" + session);
			System.out.println("SESSION ID=======>" + session.getId());

			sessionLoggingStrategy.onAuthentication(auth, request, response);
			System.out.println("sessionId==>" + RequestContextHolder.currentRequestAttributes().getSessionId());
			UserSession userSession = peopleSessionRepository
					.findByActiveSessionId(RequestContextHolder.currentRequestAttributes().getSessionId());
			System.out.println("userSession==>" + userSession);
			// logger.info("getSessionId==>" + userSession.getSessionId());
			// logger.debug("id==>" + userSession.getId());
			// People user = userApi.findUserById(userSession.getUser()
			// .getId());

		} else {
			System.out.println("Logging unsucessfull");
			SecurityContextHolder.getContext().setAuthentication(null);

		}
		return "redirect:/";
	}

	
	
	
	private void fillErrors(BindingResult bindingResult, List<ValidationError> errors) {
		System.out.println("errors==>" + errors);
		System.out.println("bindingResult==>" + bindingResult);
		for (ValidationError validationError : errors) {
			System.out.println("validationError.getField()==>" + validationError.getField());
			System.out.println("validationError.getCode()==>" + validationError.getCode());
			bindingResult.rejectValue(validationError.getField(), validationError.getCode());
		}
	}

}
