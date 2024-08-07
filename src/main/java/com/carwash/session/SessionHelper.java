package com.carwash.session;

import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import jakarta.servlet.http.HttpSession;

@Component
public class SessionHelper {

	public void removeMessageFromSession() {
		try {

			HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest()
					.getSession();
			session.removeAttribute("name");
			session.removeAttribute("number");
			session.removeAttribute("logout");
			session.removeAttribute("call");
			session.removeAttribute("icon");
			session.removeAttribute("hide");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
