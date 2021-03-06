% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animate.R
\name{sg_animate}
\alias{sg_animate}
\title{Animate}
\usage{
sg_animate(sg, mapping, options = list(easing = "cubicInOut"), delay = 5000)
}
\arguments{
\item{sg}{An object of class \code{sigmajs}as intatiated by \code{\link{sigmajs}}.}

\item{mapping}{Variables to map animation to.}

\item{options}{Animations options.}

\item{delay}{Delay in milliseconds before animation is triggered.}
}
\value{
An object of class \code{htmlwidget} which renders the visualisation on print.
}
\description{
Animate graph components.
}
\details{
You can animate, \code{x}, \code{y}, \code{size} and \code{color}.
}
\examples{
# generate graph
nodes <- sg_make_nodes(20)
edges <- sg_make_edges(nodes, 30)

# add transition
n <- nrow(nodes)
nodes$to_x <- runif(n, 5, 10)
nodes$to_y <- runif(n, 5, 10)
nodes$to_size <- runif(n, 5, 10)

sigmajs() \%>\%
  sg_nodes(nodes, id, label, size, color, to_x, to_y, to_size) \%>\%
  sg_edges(edges, id, source, target) \%>\% 
  sg_animate(mapping = list(x = "to_x", y = "to_y", size = "to_size"))

}
\seealso{
\href{https://github.com/jacomyal/sigma.js/tree/master/plugins/sigma.plugins.animate}{official documentation}
}
