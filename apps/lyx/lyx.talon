app: LyX.exe
app: LyX
-
tag(): user.maths
{user.tex_symbols}:
    key(\)
    insert(tex_symbols)
    key(space)
greek {user.greek_letters}:
    key(\)
    insert(greek_letters)
    key(space)
<number> {user.maths_fractions}:
    key(alt-m f)
    insert(number)
    key(down)
    insert(maths_fractions)
    key(right)

matrix one by <number>:
    key(alt-m [)
    insert("\\array ")
    key(alt-m c i)
    repeat(number - 2)
matrix <number> by one:
    key(alt-m [)
    insert("\\array ")
    key(alt-m w i)
    repeat(number - 2)
matrix <number> by <number>:
    key(alt-m [)
    insert("\\array ")
    key(alt-m w i)
    repeat(number_1 - 2)
    key(alt-m c i)
    repeat(number_2 - 2)

add matrix row: key(alt-m w i)
(delete | remove) matrix row: key(alt-m w d)
add matrix column: key(alt-m c i)
(delete | remove) matrix column: key(alt-m c d)

square root: key(alt-m s)
generic root: key(alt-m r)
fraction: key(alt-m f)
over: key(shift-left alt-m f down)
(super script | to the power): key(^)
sub script: key(_)
squared: key(^ 2 right)
cubed: key(^ 3 right)
inverse: key(^ - 1 right)

brackets: key(alt-m ()
square brackets: key(alt-m [)
curly brackets: key(alt-m {)
absolute: key(alt-m |)

accent hat: key(alt-m h)
accent tilde: key(alt-m &)
accent dot: key(alt-m .)
accent double dot: key(alt-m \")
accent bar: key(alt-m -)
accent vector: key(alt-m v)

blank summation: "\\sum "
summation:
    insert("\\stackrelthree ")
    key(down)
    insert("\\sum ")
    key(down)
blank product: "\\prod "
product:
    insert("\\stackrelthree ")
    key(down)
    insert("\\prod ")
    key(down)
limit:
    insert("\\underset \\lim ")
    key(down)
blank limit: "\\lim "
label above: "\\overset "
label below: "\\underset "
prime:
    insert("^\\prime ")
    key(right)
degrees:
    insert("^\\circ ")
    key(right)
exponential:
    insert("\\exp ")
    key(alt-m ()
expectation:
    insert("E")
    key(alt-m ()
variance:
    insert("Var")
    key(alt-m ()
#
real numbers:
    insert("\\mathbb R")
    key(right)
complex numbers:
    insert("\\mathbb C")
    key(right)
integer numbers:
    insert("\\mathbb Z")
    key(right)
rational numbers:
    insert("\\mathbb Q")
    key(right)
natural numbers:
    insert("\\mathbb N")
    key(right)

text roman: "\\mathrm "
text bold: "\\mathbf "
text sans serif: "\\mathsf "
text italic: "\\mathit "
text typewriter: "\\mathtt "
text (beebee | blackboard bold | blackboard): "\\mathbb "

#
# Program control
#
new file: key(ctrl-n)
open file: key(ctrl-o)
save as: key(ctrl-shift-s)
(math | maths) mode: key(ctrl-m)
display mode: key(ctrl-shift-m)
normal mode: key(alt-p s)
view PDF: key(ctrl-r)
update PDF: key(ctrl-shift-r)
next tab: key(ctrl-pgdown)
(prior | previous) tab: key(ctrl-pgup)
close tab: key(ctrl-w)
move line up: key(alt-up)
move line down: key(alt-down)
#
insert (in line formula | in line): key(alt-i h i)
insert (numbered formula): key(alt-i h n)
insert (display formula | display): key(alt-i h d)
insert equation array: key(alt-i h e)
# insert (AMS align environment | AMS align): key(alt-i h a)
# insert AMS align at [environment]: key(alt-i h t)
# insert AMS flalign [environment]: key(alt-i h f)
# insert (AMS gathered environment | AMS gather): key(alt-i h g)
# insert (AMS multline [environment]| multiline): key(alt-i h m)
# insert array [environment]: key(alt-i h y)
# insert (cases [environment] | piecewise): key(alt-i h c)
# insert (aligned [environment] | align): key(alt-i h l)
# insert aligned at [environment]: key(alt-i h v)
# insert gathered [environment]: key(alt-i h h)
# insert split [environment]: key(alt-i h s)
# insert delimiters: key(alt-i h r)
# insert matrix: key(alt-i h x)
# insert macro: key(alt-i h o)
#
insert [bulleted] list: key(alt-p b)
insert numbered list: key(alt-p e)
insert description: key(alt-p d)
insert part: key(alt-p 0)
insert (section | heading): key(alt-p 2)
insert sub (section | heading): key(alt-p 3)
insert sub sub (section | heading): key(alt-p 4)
insert paragraph: key(alt-p 5)
insert sub paragraph: key(alt-p 6)
insert title: key(alt-p t)
insert author: key(alt-p shift-a)
insert date: key(alt-p shift-d)
insert abstract: key(alt-p a)
insert address: key(alt-p alt-a)
insert bibliography: key(alt-p shift-b)
insert quotation: key(alt-p alt-q)
insert quote: key(alt-p q)
insert verse: key(alt-p v)

# added by me:
exactly if: "\\iff "
therefore: "\\Rightarrow "
sinus: "\\sin"
cosinus: "\\cos"

# like matrix, but with round bracket
vector one by <number>:
    key(alt-m shift-8)
    insert("\\array ")
    key(alt-m c i)
    repeat(number - 2)
vector <number> by one:
    key(alt-m shift-8)
    insert("\\array ")
    key(alt-m w i)
    repeat(number - 2)
vector <number> by <number>:
    key(alt-m shift-8)
    insert("\\array ")
    key(alt-m w i)
    repeat(number_1 - 2)
    key(alt-m c i)
    repeat(number_2 - 2)
