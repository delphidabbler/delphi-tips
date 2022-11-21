/*  Cookies script */

/*! (C) 2022, Peter Johnson | MIT License | Part of github.com/delphidabbler/delphi-tips */

var Cookie = {

    makeCookieStr: function(cookieName, cookieValue, expiryDate) {
        return cookieName + "=" + cookieValue + "; expires=" + expiryDate + "; path=/";
    },

    set: function (cookieName, cookieValue, daysToExpiry) {
        const millisPerDay = 24 * 60 * 60 * 1000;
        let expiryDate = new Date();
        expiryDate.setTime(expiryDate.getTime() + (daysToExpiry * millisPerDay));
        document.cookie = Cookie.makeCookieStr(cookieName, cookieValue, expiryDate.toUTCString());
    },

    get: function (cookieName) {
        let cookies = document.cookie.split(';');
        for (const cookie of cookies) {
            const [name, value] = cookie.split('=');
            if (name.trim() == cookieName) {
                return value.trim();
            }
        }
        return null;
    },

    delete: function (cookieName) {
        document.cookie = Cookie.makeCookieStr(cookieName, "", "Thu, 01 Jan 1970 00:00:00 GMT");
    },

    isSet: function (cookieName) {
        // Code from https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie
        return document.cookie.split(';').some((item) => item.trim().startsWith(cookieName + '='))
    }
};
