{##############################################################################
 #                                  MSE-JPS                                   #
 #                 Mini Site Engine - Javascript / PHP / SQL                  #
 #                                                                            #
 #                         Version 1.0.1 : 27/03/2015                         #
 #                                                                            #
 #                      Developped by Hadrien Croubois :                      #
 #                         hadrien.croubois@gmail.com                         #
 #                                                                            #
 ##############################################################################}

<footer>
	<ul id='social'>
		{% for social in website.socials.list %}
			<li>
				<a href='{{social.url}}' target='_blank'>
					<img src='{{social.img}}' alt='{{social.title}}'>
					{{social.title}}
				</a>
			</li>
		{% endfor %}
	</ul>
	<ul id='mininav'>
		{% for page in website.page.sections.list %}
			<li>
				<a id='mininav-a-{{page.id}}' href='?page={{page.title}}'>{{page.title}}</a>
			</li>
		{% endfor %}
		<li class='top'>
			<a class='quietest' href='#' onclick='slideTop(); return false;'>
				Page Top &#8593;
			</a>
		</li>
	</ul>
</footer>
