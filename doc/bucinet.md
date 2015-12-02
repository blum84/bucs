

# Module bucinet #
* [Function Index](#index)
* [Function Details](#functions)

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#active_ip-0">active_ip/0</a></td><td>
Return the first active IP.</td></tr><tr><td valign="top"><a href="#ip_to_binary-1">ip_to_binary/1</a></td><td>
Return a binary for a given <tt>inet:ip4_address()</tt></td></tr><tr><td valign="top"><a href="#ip_to_string-1">ip_to_string/1</a></td><td>
Return a string for the given <tt>inet:ip4_address()</tt></td></tr><tr><td valign="top"><a href="#is_ip-1">is_ip/1</a></td><td>
Return true if the given parameter is an IP.</td></tr><tr><td valign="top"><a href="#loopback-0">loopback/0</a></td><td>
Return the loopback IP.</td></tr><tr><td valign="top"><a href="#to_ip-1">to_ip/1</a></td><td>
Return a <tt>inet:ip4_address()</tt> from a string or a binary.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="active_ip-0"></a>

### active_ip/0 ###

<pre><code>
active_ip() -&gt; <a href="inet.md#type-ip4_address">inet:ip4_address()</a>
</code></pre>
<br />

Return the first active IP.

<a name="ip_to_binary-1"></a>

### ip_to_binary/1 ###

<pre><code>
ip_to_binary(IP::<a href="inet.md#type-ip4_address">inet:ip4_address()</a>) -&gt; binary() | error
</code></pre>
<br />

Return a binary for a given `inet:ip4_address()`

<a name="ip_to_string-1"></a>

### ip_to_string/1 ###

<pre><code>
ip_to_string(X1::<a href="inet.md#type-ip4_address">inet:ip4_address()</a>) -&gt; string() | error
</code></pre>
<br />

Return a string for the given `inet:ip4_address()`

<a name="is_ip-1"></a>

### is_ip/1 ###

<pre><code>
is_ip(IP::term()) -&gt; true | false
</code></pre>
<br />

Return true if the given parameter is an IP.

<a name="loopback-0"></a>

### loopback/0 ###

<pre><code>
loopback() -&gt; <a href="inet.md#type-ip4_address">inet:ip4_address()</a>
</code></pre>
<br />

Return the loopback IP.

<a name="to_ip-1"></a>

### to_ip/1 ###

<pre><code>
to_ip(IP::binary() | string()) -&gt; <a href="inet.md#type-ip4_address">inet:ip4_address()</a> | error
</code></pre>
<br />

Return a `inet:ip4_address()` from a string or a binary.
