Hello World!<br />

这里有三个不同的TableView<br />
 
第一个 Section1 是通过代码写的 TableView <br />
里面在创建Cell的时候 先判断这个Cell有没有被Init 如果没有就先Init一下<br />
在这种情况下 如果Cell被滑出界面 再滑回来的时候 就会直接Dequeue<br />

第二个 Section2 也是通过代码写的 TableView<br />
和Section1 不同的是 这里创建Cell的时候没有判断有没有被Init过 <br />
在这种情况写 如果Cell被滑出界面 再滑回来的时候 就不会Dequeue 而是在新Init一个新的Cell Obj<br />
可以通过 Terminal 看到 Log<br />

第三个 Section3 是通过 StoryBoard 写的正常的TableView<br />
这样的话 代码里面 就可以直接用 Dequeue<br />
但是究其原因是因为 StoryBoard已经帮你在一开始就Init好了那些Cell <br />
可以在 Terminal 里面依然看到 Cell是有自动被Init的 <br />
所以这样子如果Cell滑出界面 还是能够Dequeue回来的 <br />