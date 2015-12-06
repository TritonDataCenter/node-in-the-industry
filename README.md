
**Note:** This repository is no longer used as part of the nodejs.org website. The new repository for the nodejs.org website cane be found here: https://github.com/nodejs/nodejs.org.

https://github.com/nodejs/nodejs.org

This is the thing that updates the "node in the industry" section on the
node homepage, by picking 4 items at random.

## Hey!  We use node!  Can I get my company on here?

Probably!

Send your request in the form of a pull request.  It must add a folder
at `data/<mycompany>` (where `<mycompany>` is the name of your company),
containing a `quote.html` file and a `logo.png` file.

The `quote.html` file should be just like the others: about 20 words
explaining why node is a good fit at your company, from a technical
leader at your company, with a link to an appropriate page, preferrably
containing more info about your use of node.  Longer quotes may be
truncated or exerpted or rejected, at Joyent's sole discretion.  The
HTML markup in the quote.html may be modified if necessary, at the sole
discretion of Joyent and the Node.js Project.

The `logo.png` file MUST be 68px tall, and no more than 340px wide.
(This is double the size on the page.  It'll be resized down for the
benefit of retina displays.) It should be JUST your official company
logo and the (R) or (TM) symbol, in a single color: `rgb(210,216,186)`
on `rgb(51,52,45)`, with appropriate antialiasing.  It MUST NOT
contain any additional texture, taglines, highlighting.  It may be
edited to better accomodate the needs of the web page design, or for
any other reason, at the sole discretion of Joyent and the Node.js
Project.

You can test your addition by running the following bash command:

    NOSHUFFLE=1 bash make-index.sh

and then open the `index.html` file in your web browser.

By submitting this request, you are giving Joyent, Inc. permission to
use the supplied logo on the "Node.js in the Industry" section of the
nodejs.org homepage, and to make any such modifications as Joyent deems
necessary or appropriate for the context.  Joyent is not obligated to
include your company logo and link on the nodejs.org home page, and will
do so at the sole discretion of Joyent and the Node.js Project.

If you would like it removed, simply send a pull request removing it
from the git repository, and it will be removed from the site promptly.

No other relationship between your company and Joyent is implied or
required.
