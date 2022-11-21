/*
 * Cookie consent script
 * (C) 2022, Peter Johnson | MIT License | Part of github.com/delphidabbler/delphi-tips
 * Requires cookies.js
 *
 * To style this item provide CSS for:
 *    #cookie-popup (bounding <div>)
 *    p.cookie-msg (message string <p>)
 *    p.cookie-btn (<p> containing accept/reject buttons)
 *    p.cookie-btn button (accept/reject buttons)
 *    #cookie-consent-reject-btn (reject button)
 *    #cookie-consent-accept-btn (accept button)
 */

$( function() {

    const cookieName = 'dd-tips--cookies-accepted';
    const sessionCookieName = 'dd-tips--cookie-reject-session';
    const optOutPara = '#cookie-consent--opt-out-text';
    const messageHTMLPath = '/assets/scripts/includes/cookie-consent-msg.html';


    // Remove redundant cookies
    Cookie.delete('cookieconsent_status');

    if ( Cookie.isSet(cookieName) ) {
        // User has accepted cookies: add opt-out link to footer
        const revokeBtn = '#cookie-consent--revoke';
        $(optOutPara).css('display', 'block');
        $(revokeBtn).on('click', function() {
            Cookie.delete(cookieName);
            location.reload(true);
        });
    }

    else if ( sessionStorage[sessionCookieName] !== '1' ) {
        // No cookie decision recorded: display pop-up message
        $(document.body).prepend('<div id="cookie-message"></div>');
        $('#cookie-message').load(
            messageHTMLPath,
            function (response, status, jqHXR) {

                $('#cookie-consent-accept-btn').click(function() {
                    Cookie.set(cookieName, "1", 182);  // expires in apx 6 mths
                    $('#cookie-popup').fadeOut();
                    $(optOutPara).css('display', 'block');
                    location.reload(true);
                });

                $('#cookie-consent-reject-btn').click(function() {
                    Cookie.delete(cookieName);
                    sessionStorage[sessionCookieName] = '1';
                    $('#cookie-popup').fadeOut();
                    location.reload(true);
                });

                $(window).on('scroll', function() {

                    let documentHeight = document.body.scrollHeight;
                    let currentScroll = window.scrollY + window.innerHeight;
                    // When the user is [modifier]px from the bottom, fire the event.
                    let pageEndDelta = 150;
                    if(currentScroll + pageEndDelta > documentHeight) {
                        // at end: hide the message
                        if ($('#cookie-popup').css('display') !== 'none') {
                            $('#cookie-popup').fadeOut();
                        }
                    }
                    else {
                        // not at end
                        if ($('#cookie-popup').css('display') === 'none') {
                            $('#cookie-popup').fadeIn();
                        }
                    }
                });
            }
        );
    }

});
