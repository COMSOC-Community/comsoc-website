<?php include("web/header.php")?>

<h1>Invited Talk: Harrie de Swart</h1>


<p>
<table><tr valign="top">
<td><img src="images/swart.gif"></td><td>&nbsp;</td>
<td><a href="http://www.uvt.nl/faculteiten/fww/medewerkers/swart/">
Harrie de Swart</a><br>
Chair of Logic and Linguistic Analysis<br>
Faculty of Philosophy<br>
University of Tilburg<br>
The Netherlands </td>
</tr></table>
</p>

<p>
<b>Social Software for Coalition Formation</b>
</p>

<p>
This paper concerns an interdisciplinary approach to coalition
formation. We apply the MacBeth software, relational algebra, the
RelView tool, graph theory, bargaining theory, social choice
theory, and consensus reaching to a model of coalition formation.
</p>

<p>
A feasible government is a pair consisting of a coalition of parties
and a policy supported by this coalition. A feasible government is
stable if it is not dominated by any other feasible government.

Each party evaluates each government with respect to certain criteria.
MacBeth helps to quantify the importance of the criteria and the
attractiveness and repulsiveness of governments to parties with
respect to the given criteria.

Feasibility, dominance, and stability are formulated in 
relation-algebraic terms. The RelView tool is used to compute the dominance
relation and the set of all stable governments.

In case there is no stable government, i.e., in case the dominance
relation is cyclic, we apply graph-theoretical techniques for
breaking the cycles.

If the solution is not unique, we select the final government by 
applying bargaining or appropriate social choice rules.

We describe how a coalition may form a government by reaching
consensus about a policy.
</p>

<p>
This is joint work Agnieszka Rusinowska, Rudolf Berghammer, Patrik Eklund,
Jan-Willem van der Rijt, and Marc Roubens.
</p>


<?php include("web/footer-1.php")?>
<?php echo date ("l, d-M-Y H:i:s T", getlastmod())?>
<?php include("web/footer-2.php")?>

