# Emmet's Site To-Do List

## Useful Links

-	  [Squarespace Advice](https://www.squarespace.com/blog/making-journalist-websites)
-	  [Journalist Portfolio Samples](https://www.journoportfolio.com/examples/journalists/)
-	  [Portfolio Examples](https://www.sitebuilderreport.com/inspiration/journalist-portfolio-websites?subId1=inspiration/journalist_portfolio-websites)
-	  [More examples](https://authory.com/blog/journalist-website)
-	  [Yet more examples](https://createtoday.io/examples?category=journalist)

## Head Elements

    <link rel="icon" href="{{ '/favicon.ico' | relative_url }}" type="image/x-icon">  
    <link rel="apple-touch-icon" href="{{ '/favicon-152.png' | relative_url }}">  
      
    <meta property="og:type" content="website">  
    <meta property="og:title" content="Algonquin Design &ndash; Graphic Design Program">  
    <meta property="og:description" content="Explore the Graphic Design program at Algonquin College. Learn, create, and launch your design career with our innovative curriculum.">  
    <meta property="og:url" content="https://algonquindesign.ca">  
    <meta property="og:image" content="https://algonquindesign.ca/favicon-social.png">  
    <meta name="twitter:card" content="summary_large_image">  
    <meta name="twitter:title" content="Algonquin Design &ndash; Graphic Design Program">  
    <meta name="twitter:description" content="Explore the Graphic Design program at Algonquin College. Learn, create, and launch your design career with our innovative curriculum.">  
    <meta name="twitter:image" content="https://algonquindesign.ca/favicon-social.png">  
      
    <script src="https://unpkg.com/@botpoison/browser" async></script>  
      
    <link rel="canonical" href="https://algonquindesign.ca{{ page.url }}">  
      
    <link rel="preload" as="font" href="{{ site.baseurl }}/fonts/merriweather-regular.woff2" type="font/woff2" crossorigin>  
    <link rel="preload" as="font" href="{{ site.baseurl }}/fonts/opensans-regular.woff2" type="font/woff2" crossorigin>  
      
## CMS Features

## Mobile and UX improvements

-	**Optimized for phones and tablets**  
  -	Layouts, navigation, buttons, and floating actions are tuned specifically for small screens, so you can actually enjoy editing on mobile instead of just tolerating it.[3][1]
  -	There is a “Sign in with Mobile” flow using a QR code that lets you log in on your phone if you are already authenticated on desktop.[4][1]

-	**Customizable interface**  
  -	Per‑user settings control appearance, language, editor behavior, and accessibility tweaks like reduced motion, link styling, and contrast.[2][1]
  -	You get automatic update notifications and one‑click upgrades to new Sveltia versions.[5][1]

## Editing, media, and i18n

-	**Modern rich text and content editing**  
  -	Uses Lexical for the rich text editor, with better accessibility, IME support (CJK), and more reliable behavior than the old Decap editor.[1]
  -	Strong validation options (patterns, max length, localized formatting) and clearer error messages, including for nested fields.[5][1]

-	**Media library and image tools**  
  -	Full asset library with previews, multi‑select delete, and built‑in image optimization, so you can resize or convert images on upload without external tools.[2][1]
  -	Integrations for stock photos such as Pexels, Pixabay, and Unsplash are available for quicker visual sourcing.[2]

-	**First‑class multilingual support**  
  -	“First‑class i18n” with better locale switching, clearer labels, and the ability to require fields only for specific locales.[6][1]
  -	Supports RTL languages, per‑locale formatting, optional disabling of non‑default locales, and even one‑click machine translation hooks.[1]

## Git, backends, and local workflow

-	**Fast Git backends**  
  -	Supports GitHub, GitLab, and Gitea, using GitHub’s GraphQL API to fetch data efficiently when connected to a remote repo.[1][2]
  -	Still works framework‑agnostically with any static site generator, so your existing build stays intact.[7][8]

-	**Local repository workflow**  
  -	Local mode uses the File System Access API so you can edit your repo directly from Chrome or Edge without any backend or OAuth, which is ideal for how you are using it now.[9][1]
  -	There is even a “Test backend” that writes into the browser’s private storage so you can experiment without touching real files.[1]

## Accessibility and polish

-	**Accessibility‑driven design**  
  -	Keyboard navigation, WAI‑ARIA support, screen‑reader announcements, and attention to contrast and motion settings make it friendlier for diverse users.[1]
  -	Buttons, links, and states are visually distinct in both light and dark modes, improving clarity for students and editors.[1]

-	**Many small paper‑cut fixes**  
  -	Better collection lists (with item counts), smarter summaries, safer handling of malformed front matter, and fewer confusing edge cases when editing relations or booleans.[5][1]
  -	Behind the scenes, it is a fresh Svelte‑based app with a custom UI library, so you avoid the legacy React dependency issues that often plague Decap projects.[10][1]

If you tell what parts of the workflow you care about most (mobile reporting for Emmet, multilingual content, media‑heavy posts, etc.), specific Sveltia settings and patterns can be suggested so you use those strengths deliberately rather than just inheriting your old Decap config.[11][2]

Here’s the list formatted as you requested:

-	[https://app.radicle.xyz/nodes/seed.radicle.garden/rad:z8WAhJLEoiFv6qDGoC495mzrTZdo/tree/72314cbdb69fe3e4403b9511877768110e7e2829](https://app.radicle.xyz/nodes/seed.radicle.garden/rad:z8WAhJLEoiFv6qDGoC495mzrTZdo/tree/72314cbdb69fe3e4403b9511877768110e7e2829)
-	[https://chris-ayers.com/2025/06/26/mobile-cms-on-github-pages/](https://chris-ayers.com/2025/06/26/mobile-cms-on-github-pages/)
-	[https://docs.sveltycms.com](https://docs.sveltycms.com)
-	[https://dubasipavankumar.com/blog/sveltia-cms-migration-decap-replacement](https://dubasipavankumar.com/blog/sveltia-cms-migration-decap-replacement)
-	[https://github.com/sveltia/sveltia-cms/milestone/1](https://github.com/sveltia/sveltia-cms/milestone/1)
-	[https://github.com/sveltia/sveltia-cms/releases](https://github.com/sveltia/sveltia-cms/releases)
-	[https://jamstack.org/headless-cms/sveltia-cms/](https://jamstack.org/headless-cms/sveltia-cms/)
-	[https://madewithsvelte.com/sveltia-cms](https://madewithsvelte.com/sveltia-cms)
-	[https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/images/7459043/2c86cdab-ca6a-4299-a2f7-ee5223b550d2/Screenshot-2025-12-29-at-10.00.51-AM.jpg](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/images/7459043/2c86cdab-ca6a-4299-a2f7-ee5223b550d2/Screenshot-2025-12-29-at-10.00.51-AM.jpg)
-	[https://www.hugolify.io/docs/cms/admin/cms/sveltia-cms/](https://www.hugolify.io/docs/cms/admin/cms/sveltia-cms/)
-	[https://www.npmjs.com/package/@sveltia/cms?activeTab=readme](https://www.npmjs.com/package/@sveltia/cms?activeTab=readme)
-	[https://www.npmjs.com/package/@sveltia/cms/v/0.58.4?activeTab=dependents](https://www.npmjs.com/package/@sveltia/cms/v/0.58.4?activeTab=dependents)
-	[https://www.reddit.com/r/sveltejs/comments/1jfpovh/build_custom_cms_with_sveltekit/](https://www.reddit.com/r/sveltejs/comments/1jfpovh/build_custom_cms_with_sveltekit/)
-	[https://www.reddit.com/r/sveltejs/comments/1jx0okm/blog_cms_for_svelte_websites_straight_from_google/](https://www.reddit.com/r/sveltejs/comments/1jx0okm/blog_cms_for_svelte_websites_straight_from_google/)
