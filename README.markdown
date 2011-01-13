# Intel Visual Computing Center

This is the website for the Intel Science and Technology Center for Visual Computing. The center for visual computing is a joint effort between 8 universities and a set of industry sponsors led by Intel, with Stanford serving as the hub of this center.

## Website Contents

The website consists of a public-facing side that presents the **intent, progress and outcome** of the center.

*   **Main page** - overview of center, research in progress and research results, reports
*   **Overall vision and progress** - steering committee info and quarterly reports
*   **Themes and Projects** - overall categories and projects in each category. will be cross-referenced with people. Each theme should have a centrally maintained page, each project should have a project page that is easily updated by admin people associated with projects. Cross-referenced with publications and talks.
*   **People** - will be cross-referenced with projects.
*   **Publications and Talks** - as research results are produced. must be easy to update and maintain, each paper and talk should have its own page mostly autogenned.

The website should also have a functional side for tying together research activities:

**Anything that supports collaboration is good!**

*   Repository information for collaborators
*   Calendar editable by admins
*   Repositories for code/papers/ideas shared amongst researchers
*   Activities pages for official get-togethers, meetings, etc.
*   Talk details


## Website Architecture

Most of the website will be fairly static (changing maybe once a week to once a month). Rather than deal with a fully dynamic site, the main site is written in Haskell using the Hakyll static site generator. Internal pages that require dynamic stuff can be handled by a dynamic system of our choice, possibly multiple. If static sites become too difficult, it's easy enough to turn a Hakyll site into a Rails/Django/Play/Lift site.

### Libraries and Resources used:

*   [BlueprintCSS](http://www.blueprintcss.org/)
*   [jQuery](http://jquery.com/)
*   [jqModal](http://dev.iceburg.net/jquery/jqModal/)
*   [Hakyll](http://jaspervdj.be/hakyll/tutorials/part01.html) and [jaspervdj's hakyll site open-source code](https://github.com/jaspervdj/jaspervdj)

### To Build and Preview:

Once Off:
> cabal install hakyll

Needed when file structure changes:
> ghc --make hakyll.hs

Will recompile changed files without restarting server:
> ./hakyll preview
