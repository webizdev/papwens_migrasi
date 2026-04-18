// Papwens Admin Mobile UI Transformation Logic
(function() {
    function hydrateAdminMobile() {
        if (!window.location.pathname.includes('/admin')) return;
        
        const body = document.body;
        const isMobile = window.innerWidth < 1024;
        
        if (!isMobile) {
            // Cleanup mobile elements if we resized back to desktop
            const nav = document.getElementById('papwens-admin-nav');
            if (nav) nav.remove();
            const top = document.getElementById('papwens-admin-top');
            if (top) top.remove();
            const aside = document.querySelector('aside');
            if (aside) {
                aside.classList.remove('admin-sidebar-hidden');
                aside.style = '';
            }
            return;
        }

        // A. Hide big sidebar
        const aside = document.querySelector('aside');
        if (aside && !aside.classList.contains('admin-sidebar-hidden')) {
            aside.classList.add('admin-sidebar-hidden');
        }

        // B. Adjust Main Content Padding
        const main = document.querySelector('main');
        if (main && !main.classList.contains('admin-main-px')) {
            main.classList.add('admin-main-px');
        }

        // C. Inject Bottom Nav if missing
        if (!document.getElementById('papwens-admin-nav')) {
            const nav = document.createElement('div');
            nav.id = 'papwens-admin-nav';
            nav.className = 'admin-mobile-nav';
            
            const items = [
                { label: 'Dash', icon: '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path></svg>', path: '/admin' },
                { label: 'Menu', icon: '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path></svg>', path: '/admin/menu' },
                { label: 'Gallery', icon: '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>', path: '/admin/gallery' },
                { label: 'Web', icon: '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>', path: '/admin/settings' }
            ];

            items.forEach(item => {
                const a = document.createElement('a');
                a.href = item.path;
                a.className = 'admin-nav-item' + (window.location.pathname === item.path ? ' active' : '');
                a.innerHTML = item.icon + `<span>${item.label}</span>`;
                nav.appendChild(a);
            });
            document.body.appendChild(nav);
        }

        // D. Premium Glass Cards
        document.querySelectorAll('[class*="bg-white"], [class*="bg-gray-50"]').forEach(el => {
            if (el.closest('main') && !el.classList.contains('glass-card')) {
                el.classList.add('glass-card');
            }
        });

        // E. Header injection (Hamburger)
        if (!document.getElementById('papwens-admin-top')) {
            const top = document.createElement('div');
            top.id = 'papwens-admin-top';
            top.className = 'admin-top-bar';
            top.innerHTML = `
                <div style="flex:1; font-weight:700; font-size:16px; color:#4a3b32; font-family:'Playfair Display', serif;">Papwens Admin</div>
                <div id="admin-hamb" style="width:40px; height:40px; display:flex; align-items:center; justify-content:center; cursor:pointer;">
                    <svg style="width:24px; height:24px;" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7"></path></svg>
                </div>
            `;
            top.querySelector('#admin-hamb').onclick = () => {
                const aside = document.querySelector('aside');
                if (aside) {
                    aside.classList.toggle('admin-sidebar-hidden');
                    if (!aside.classList.contains('admin-sidebar-hidden')) {
                        aside.style.position = 'fixed';
                        aside.style.top = '60px';
                        aside.style.left = '0';
                        aside.style.bottom = '0';
                        aside.style.zIndex = '100';
                        aside.style.width = '240px';
                        aside.style.display = 'block';
                        aside.style.background = '#1a1a1a';
                    } else {
                        aside.style.display = 'none';
                    }
                }
            };
            document.body.prepend(top);
        }
    }

    // Hydrate on load and on mutations
    let hydrateTimer = null;
    const observer = new MutationObserver(() => {
        if (hydrateTimer) clearTimeout(hydrateTimer);
        hydrateTimer = setTimeout(hydrateAdminMobile, 100);
    });

    window.addEventListener('load', () => {
        hydrateAdminMobile();
        observer.observe(document.body, { childList: true, subtree: true });
    });
})();
