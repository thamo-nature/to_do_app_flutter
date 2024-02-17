# to_do_flutter

A new Flutter project.

<h5> Move Widgets around </h5>
<pre>
 Container : 
      padding: const EdgeInsets.only(left: 30, top: 60),
      margin:
      width,
      height,
</pre>

<h5> Radius Property </h5>
<pre>

    Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)),
        ),
      ),

</pre>

<h5> Floating Action Button </h5>
<pre>

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.lightBlueAccent),
      ),);
      
</pre>