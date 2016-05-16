


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>issamalidev/bs.pagination.js · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="issamalidev/bs.pagination.js" name="twitter:title" /><meta content="bs.pagination.js - simple script to apply bootstrap pagination style in asp.net gridview" name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/6955459?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/6955459?v=3&amp;s=400" property="og:image" /><meta content="issamalidev/bs.pagination.js" property="og:title" /><meta content="https://github.com/issamalidev/bs.pagination.js" property="og:url" /><meta content="bs.pagination.js - simple script to apply bootstrap pagination style in asp.net gridview" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C87CF015:703F:F139964:5564D968" name="octolytics-dimension-request_id" />
    
    <meta content="Rails, view, files#disambiguate" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged Out">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="Y6GLXOw+wNYgl7SRt8k6PRE4t/RvBbZxRaGlnNgZzvgPYZ/reedqP82IoD4iURqse+qpbRmTQvLnph/nJBOK3A==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github/index-ec65947a6982ef44ed5617dac5e84463c4b1520f11fdce5e40c3f83efe723ba9.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2/index-a0f5520d0defad5e85346a91608065c06ce9333352edbbab61c574c3af400e40.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="d25c70e5f48cb082e6d3e6cb60f816ba">

      
  <meta name="description" content="bs.pagination.js - simple script to apply bootstrap pagination style in asp.net gridview">
  <meta name="go-import" content="github.com/issamalidev/bs.pagination.js git https://github.com/issamalidev/bs.pagination.js.git">

  <meta content="6955459" name="octolytics-dimension-user_id" /><meta content="issamalidev" name="octolytics-dimension-user_login" /><meta content="17763601" name="octolytics-dimension-repository_id" /><meta content="issamalidev/bs.pagination.js" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="17763601" name="octolytics-dimension-repository_network_root_id" /><meta content="issamalidev/bs.pagination.js" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/issamalidev/bs.pagination.js/commits/master.atom" rel="alternate" title="Recent Commits to bs.pagination.js:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production windows vis-public">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        
        <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="btn btn-primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="btn" href="/login?return_to=%2Fissamalidev%2Fbs.pagination.js" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/issamalidev/bs.pagination.js/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/issamalidev/bs.pagination.js/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Fissamalidev%2Fbs.pagination.js"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/issamalidev/bs.pagination.js/watchers">
    3
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fissamalidev%2Fbs.pagination.js"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/issamalidev/bs.pagination.js/stargazers">
      4
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fissamalidev%2Fbs.pagination.js"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/issamalidev/bs.pagination.js/network" class="social-count">
        6
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/issamalidev" class="url fn" itemprop="url" rel="author"><span itemprop="title">issamalidev</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/issamalidev/bs.pagination.js" class="js-current-repository" data-pjax="#js-repo-pjax-container">bs.pagination.js</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline with-full-navigation ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/issamalidev/bs.pagination.js/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/issamalidev/bs.pagination.js" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /issamalidev/bs.pagination.js">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/issamalidev/bs.pagination.js/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /issamalidev/bs.pagination.js/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/issamalidev/bs.pagination.js/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /issamalidev/bs.pagination.js/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/issamalidev/bs.pagination.js/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /issamalidev/bs.pagination.js/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/issamalidev/bs.pagination.js/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /issamalidev/bs.pagination.js/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/issamalidev/bs.pagination.js.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/issamalidev/bs.pagination.js" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a> or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="https://windows.github.com" class="btn btn-sm sidebar-button" title="Save issamalidev/bs.pagination.js to your computer and use it in GitHub Desktop." aria-label="Save issamalidev/bs.pagination.js to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/issamalidev/bs.pagination.js/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of issamalidev/bs.pagination.js as a zip file"
                   title="Download the contents of issamalidev/bs.pagination.js as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          
<span id="js-show-full-navigation"></span>

<div class="repository-meta js-details-container ">
    <div class="repository-description">
      simple script to apply bootstrap pagination style in asp.net gridview
    </div>

    <div class="repository-website">
      <p><a href="http://issamsoft.com" rel="nofollow">http://issamsoft.com</a></p>
    </div>


</div>

<div class="overall-summary overall-summary-bottomless">

  <div class="stats-switcher-viewport js-stats-switcher-viewport">
    <div class="stats-switcher-wrapper">
    <ul class="numbers-summary">
      <li class="commits">
        <a data-pjax href="/issamalidev/bs.pagination.js/commits/master">
            <span class="octicon octicon-history"></span>
            <span class="num text-emphasized">
              5
            </span>
            commits
        </a>
      </li>
      <li>
        <a data-pjax href="/issamalidev/bs.pagination.js/branches">
          <span class="octicon octicon-git-branch"></span>
          <span class="num text-emphasized">
            1
          </span>
          branch
        </a>
      </li>

      <li>
        <a data-pjax href="/issamalidev/bs.pagination.js/releases">
          <span class="octicon octicon-tag"></span>
          <span class="num text-emphasized">
            0
          </span>
          releases
        </a>
      </li>

      <li>
        
  <a href="/issamalidev/bs.pagination.js/graphs/contributors">
    <span class="octicon octicon-organization"></span>
    <span class="num text-emphasized">
      1
    </span>
    contributor
  </a>
      </li>
    </ul>

      <div class="repository-lang-stats">
        <ol class="repository-lang-stats-numbers">
          <li>
              <a href="/issamalidev/bs.pagination.js/search?l=aspx-vb">
                <span class="color-block language-color" style="background-color:#6a40fd;"></span>
                <span class="lang">ASP</span>
                <span class="percent">36.4%</span>
              </a>
          </li>
          <li>
              <a href="/issamalidev/bs.pagination.js/search?l=javascript">
                <span class="color-block language-color" style="background-color:#f1e05a;"></span>
                <span class="lang">JavaScript</span>
                <span class="percent">31.9%</span>
              </a>
          </li>
          <li>
              <a href="/issamalidev/bs.pagination.js/search?l=csharp">
                <span class="color-block language-color" style="background-color:#178600;"></span>
                <span class="lang">C#</span>
                <span class="percent">31.7%</span>
              </a>
          </li>
        </ol>
      </div>
    </div>
  </div>

</div>

  <div class="repository-lang-stats-graph js-toggle-lang-stats" title="Click for language details">
    <span class="language-color" aria-label="ASP 36.4%" style="width:36.4%; background-color:#6a40fd;" itemprop="keywords">ASP</span>
    <span class="language-color" aria-label="JavaScript 31.9%" style="width:31.9%; background-color:#f1e05a;" itemprop="keywords">JavaScript</span>
    <span class="language-color" aria-label="C# 31.7%" style="width:31.7%; background-color:#178600;" itemprop="keywords">C#</span>
  </div>

<include-fragment src="/issamalidev/bs.pagination.js/show_partial?partial=tree%2Frecently_touched_branches_list"></include-fragment>

<div class="file-navigation in-mid-page">
  <a href="/issamalidev/bs.pagination.js/find/master"
        class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s right"
        data-pjax
        data-hotkey="t"
        aria-label="Quickly jump between files">
    <span class="octicon octicon-list-unordered"></span>
  </a>
    <a href="/issamalidev/bs.pagination.js/compare" aria-label="Compare, review, create a pull request" class="btn btn-sm btn-primary tooltipped tooltipped-se left compare-button" aria-label="Compare &amp; review" data-pjax data-ga-click="Repository, go to compare view, location:repo overview; icon:git-compare">
      <span class="octicon octicon-git-compare"></span>
    </a>

  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/issamalidev/bs.pagination.js/tree/master"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>



  <div class="breadcrumb"><span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/issamalidev/bs.pagination.js" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">bs.pagination.js</span></a></span></span><span class="separator">/</span>
    <a class="btn-link disabled tooltipped tooltipped-e" href="#" aria-label="You must be signed in to make or propose changes">
      <span class="octicon octicon-plus"></span>
    </a>
</div>
</div>



  
  <div class="commit commit-tease js-details-container" >
      <a href="/issamalidev/bs.pagination.js/commit/eb397473d5fa2d0bc766f265388d78425c2197b4" class="comment-count" anchor="comments" data-pjax>
        1 comment <span class='octicon octicon-comment'></span>
      </a>
    <p class="commit-title ">
        <a href="/issamalidev/bs.pagination.js/commit/eb397473d5fa2d0bc766f265388d78425c2197b4" class="message" data-pjax="true" title="fix:the left side borders have no radius">fix:the left side borders have no radius</a>
        
    </p>
    <div class="commit-meta">
      <button aria-label="Copy SHA" class="js-zeroclipboard zeroclipboard-link tooltipped tooltipped-s" data-clipboard-text="eb397473d5fa2d0bc766f265388d78425c2197b4" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
      <a href="/issamalidev/bs.pagination.js/commit/eb397473d5fa2d0bc766f265388d78425c2197b4" class="sha-block" data-pjax>latest commit <span class="sha">eb397473d5</span></a>

      <div class="authorship">
        <img alt="@issamalidev" class="avatar" data-user="6955459" height="20" src="https://avatars1.githubusercontent.com/u/6955459?v=3&amp;s=40" width="20" />
        <span class="author-name"><a href="/issamalidev" rel="author">issamalidev</a></span>
        authored <time class="updated" datetime="2014-06-19T15:30:11Z" is="relative-time">Jun 19, 2014</time>

      </div>
    </div>
  </div>

  
<div class="file-wrap">
  <a href="/issamalidev/bs.pagination.js/tree/eb397473d5fa2d0bc766f265388d78425c2197b4" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

  <table class="files" data-pjax>


    <tbody>
      <tr class="warning include-fragment-error">
        <td class="icon"><span class="octicon octicon-alert"></span></td>
        <td class="content" colspan="3">Failed to load latest commit information.</td>
      </tr>

        <tr>
          <td class="icon">
            <span class="octicon octicon-file-directory"></span>
            <img alt="" class="spinner" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </td>
          <td class="content">
            <span class="css-truncate css-truncate-target"><a href="/issamalidev/bs.pagination.js/tree/master/example/WebApplication1" class="js-directory-link" id="d500b9e99a4d12f9fd7986838108cee4-9c303d63fa6efd84daa0012aabbf01abfb841a78" title="This path skips through empty directories"><span class="simplified-path">example/</span>WebApplication1</a></span>
          </td>
          <td class="message">
            <span class="css-truncate css-truncate-target">
              <a href="/issamalidev/bs.pagination.js/commit/eb397473d5fa2d0bc766f265388d78425c2197b4" class="message" data-pjax="true" title="fix:the left side borders have no radius">fix:the left side borders have no radius</a>
            </span>
          </td>
          <td class="age">
            <span class="css-truncate css-truncate-target"><time datetime="2014-06-19T15:30:11Z" is="time-ago">Jun 19, 2014</time></span>
          </td>
        </tr>
        <tr>
          <td class="icon">
            <span class="octicon octicon-file-directory"></span>
            <img alt="" class="spinner" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </td>
          <td class="content">
            <span class="css-truncate css-truncate-target"><a href="/issamalidev/bs.pagination.js/tree/master/snapshots" class="js-directory-link" id="695633290d050f31cec0c9d4bd4a57fe-9b6357f7053e24e67be1a6792b40211e6821ea9f" title="snapshots">snapshots</a></span>
          </td>
          <td class="message">
            <span class="css-truncate css-truncate-target">
              <a href="/issamalidev/bs.pagination.js/commit/80f0ab35a390235b51000a19a65c30eae7be382b" class="message" data-pjax="true" title="update snapshot file">update snapshot file</a>
            </span>
          </td>
          <td class="age">
            <span class="css-truncate css-truncate-target"><time datetime="2014-06-19T15:18:26Z" is="time-ago">Jun 19, 2014</time></span>
          </td>
        </tr>
        <tr>
          <td class="icon">
            <span class="octicon octicon-file-directory"></span>
            <img alt="" class="spinner" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </td>
          <td class="content">
            <span class="css-truncate css-truncate-target"><a href="/issamalidev/bs.pagination.js/tree/master/src" class="js-directory-link" id="25d902c24283ab8cfbac54dfa101ad31-74242b1241154b08c0fba483ecf61069561291bd" title="src">src</a></span>
          </td>
          <td class="message">
            <span class="css-truncate css-truncate-target">
              <a href="/issamalidev/bs.pagination.js/commit/eb397473d5fa2d0bc766f265388d78425c2197b4" class="message" data-pjax="true" title="fix:the left side borders have no radius">fix:the left side borders have no radius</a>
            </span>
          </td>
          <td class="age">
            <span class="css-truncate css-truncate-target"><time datetime="2014-06-19T15:30:11Z" is="time-ago">Jun 19, 2014</time></span>
          </td>
        </tr>
        <tr>
          <td class="icon">
            <span class="octicon octicon-file-text"></span>
            <img alt="" class="spinner" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </td>
          <td class="content">
            <span class="css-truncate css-truncate-target"><a href="/issamalidev/bs.pagination.js/blob/master/LICENSE" class="js-directory-link" id="9879d6db96fd29134fc802214163b95a-1ea41247e5736d861cc5ddd20f6b61392e8cbea5" title="LICENSE">LICENSE</a></span>
          </td>
          <td class="message">
            <span class="css-truncate css-truncate-target">
              <a href="/issamalidev/bs.pagination.js/commit/108ea2498e4689b1982d35c7071264155ac628dd" class="message" data-pjax="true" title="Initial commit">Initial commit</a>
            </span>
          </td>
          <td class="age">
            <span class="css-truncate css-truncate-target"><time datetime="2014-03-14T23:23:40Z" is="time-ago">Mar 14, 2014</time></span>
          </td>
        </tr>
        <tr>
          <td class="icon">
            <span class="octicon octicon-file-text"></span>
            <img alt="" class="spinner" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </td>
          <td class="content">
            <span class="css-truncate css-truncate-target"><a href="/issamalidev/bs.pagination.js/blob/master/README.md" class="js-directory-link" id="04c6e90faac2675aa89e2176d2eec7d8-7452b30132c91366e083a0129cd5c940fb524db5" title="README.md">README.md</a></span>
          </td>
          <td class="message">
            <span class="css-truncate css-truncate-target">
              <a href="/issamalidev/bs.pagination.js/commit/d7efea4856e8b7d331f3cb3dafe290af47d9645f" class="message" data-pjax="true" title="first commit">first commit</a>
            </span>
          </td>
          <td class="age">
            <span class="css-truncate css-truncate-target"><time datetime="2014-03-14T23:28:40Z" is="time-ago">Mar 15, 2014</time></span>
          </td>
        </tr>
    </tbody>
  </table>

</div>


  <div id="readme" class="boxed-group flush clearfix announce instapaper_body md">
    <h3>
      <span class="octicon octicon-book"></span>
      README.md
    </h3>

    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1><a id="user-content-bspaginationjs" class="anchor" href="#bspaginationjs" aria-hidden="true"><span class="octicon octicon-link"></span></a>bs.pagination.js</h1>

<p>bs.pagination.js is simple jquery script to apply bootstrap pagination in asp.net gridview.</p>

<p><a href="/issamalidev/bs.pagination.js/blob/master/snapshots/snapshot1.png" target="_blank"><img src="/issamalidev/bs.pagination.js/raw/master/snapshots/snapshot1.png" alt="ScreenShot" style="max-width:100%;"></a></p>

<h1><a id="user-content-usage" class="anchor" href="#usage" aria-hidden="true"><span class="octicon octicon-link"></span></a>usage</h1>

<p>To use bs.pagination in your project simply include the plugin js file in your asp.net page file:</p>

<div class="highlight highlight-html"><pre>&lt;<span class="pl-ent">script</span> <span class="pl-e">type</span>=<span class="pl-s"><span class="pl-pds">"</span>text/javascript<span class="pl-pds">"</span></span> <span class="pl-e">src</span>=<span class="pl-s"><span class="pl-pds">"</span>js/bs.pagination.js<span class="pl-pds">"</span></span>&gt;&lt;/<span class="pl-ent">script</span>&gt;</pre></div>

<p>set gridview property:</p>

<div class="highlight highlight-html"><pre>PagerStyle-CssClass="bs-pagination"</pre></div>

<h1><a id="user-content-extra-links" class="anchor" href="#extra-links" aria-hidden="true"><span class="octicon octicon-link"></span></a>extra links</h1>

<p>for more info please visit my blog: <a href="http://blog.issamsoft.com">http://blog.issamsoft.com</a></p>
</article>
  </div>


        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.04338s from github-fe117-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-447ce66a36506ebddc8e84b4e32a77f6062f3d3482e77dd21a77a01f0643ad98.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github/index-6463092fd81f779e2203f0305a794f3943e9be1a76ec8b98865160d2d69df910.js"></script>
      
      
  </body>
</html>

