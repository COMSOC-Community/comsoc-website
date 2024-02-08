<?php include("web/header.php")?>

<h1>Invited Talk: Francesca Rossi</h1>


<p>
<table><tr valign="top">
<td><img src="images/rossi.gif"></td><td>&nbsp;</td>
<td><a href="http://www.math.unipd.it/~frossi/">
Francesca Rossi</a><br>
Department of Pure and Applied Mathematics<br>
University of Padova<br>
Italy </td>
</tr></table>
</p>


<p>
<b>Incomparability and Uncertainty in Preference Aggregation</b>
</p>


<p>
We consider multi-agent settings where
agents' preferences, which can be partially ordered,
need to be aggregated. Moreover, such preferences 
may be incomplete. For example, agents may hide some of their
preferences for privacy reasons, or we might be in the process of 
eliciting the agents' preferences.

In the context of partially-ordered preferences,
we study properties such as fairness and 
non-manipulability, and we show that suitable 
extensions of classical voting theory results 
continue to hold.
</p>

<p>
Moreover, we study the computational complexity of 
the problem of computing possible and necessary winners,
that is, those candidates which can be or always are
the most preferred among the agents.
Possible and necessary winners are useful
bounds to the exact set of winners, that can be known only when 
incompleteness will be resolved. For example, they help 
guiding preference elicitation in an efficient way.
We show that computing possible and necessary
winners is in general a difficult problem, and we identify
sufficient conditions on the aggregation function
that allow us to compute them in polynomial time.
</p> 

<p>
We then consider the complexity of winner determination 
in a specific preference aggregation rule:
sequential majority voting. Here, uncertainty
can arise for two reasons: the choice of the agenda
or incomplete preferences.
We show that computing possible and necessary winners
for this rule is easy. However, if we are interested only in
balanced agendas, where the number of competitions
for the candidates is as balanced as possible,
then winner determination is difficult.
This means that, by posing this restriction, this rule 
is difficult to manipulate.
</p>

<p>
This is joint work with J&eacute;r&ocirc;me Lang, 
Maria Silvia Pini, K. Brent Venable, and Toby Walsh.
</p>


<!--
References:

Incompleteness and incomparability in preference aggregation,
M.S. Pini, F. Rossi, K.B. Venable, T.Walsh,
Proc. IJCAI 2007, Hyderabad, India, January 2007.

Winner determination in sequential majority voting,
J. Lang, M.S. Pini, F. Rossi, K.B. Venable, T. Walsh,
Proc. IJCAI 2007, Hyderabad, India, January 2007.

Strategic voting when aggregating partially ordered preferences,
F. Rossi, M.S. Pini, K.B. Venable, T. Walsh,
Proc. AAMAS 2006, Hakodate, Japan, May 2006.

Aggregating partially ordered preferences:
possibility and impossibility results,
M.S. Pini, F. Rossi, K. B. Venable, T. Walsh,
Proc. TARK X, Singapore, June 2005, ACM Digital Library.
-->


<?php include("web/footer-1.php")?>
<?php echo date ("l, d-M-Y H:i:s T", getlastmod())?>
<?php include("web/footer-2.php")?>

