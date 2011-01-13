import qualified Data.Map as M
import Control.Arrow ((>>>))
import Data.List (sort, intercalate)
import Control.Monad (liftM, mapM_)
import Control.Monad.Reader (liftIO)
import Data.Either (Either(..))

import Text.Hakyll (hakyll)
import Text.Hakyll.Render
import Text.Hakyll.Feed (FeedConfiguration (..), renderRss)
import Text.Hakyll.Util (trim, link)
import Text.Hakyll.File (getRecursiveContents, directory, removeSpaces)
import Text.Hakyll.CreateContext (createPage, createCustomPage, createListing)
import Text.Hakyll.Tags (readTagMap, renderTagCloud, renderTagLinks, withTagMap)
import Text.Hakyll.ContextManipulations (renderDate, renderValue)


-- for help, see https://github.com/jaspervdj/jaspervdj/blob/master/hakyll.hs


main = hakyll "http://visual.stanford.edu/" $ do
    directory static "images"
    directory static "js"
    directory static "publications"
    directory css "css"
    
    render "index.html"
    render "people.html"
    render "projects.html"
    render "publications.html"
    
  where
    render = renderChain ["templates/default.tmpl.html", "templates/all.tmpl.html"]
           . createPage
