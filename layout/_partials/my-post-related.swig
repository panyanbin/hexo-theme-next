{%- if page.related_articles !== false %}
  {%- set popular_posts = popular_posts_json(theme.related_posts.params, page) %}
  {%- if popular_posts.json and popular_posts.json.length > 0 %}
    <div class="main-inner main-area" style="margin-top: 20px">
      <div class="content-wrap">
        <div class=" recommended-area shadow">
          <div class="recommended-entry-list-title">
            {{ page.related_posts.title or theme.related_posts.title or __('post.related_posts') }}
          </div>

          <ul class="entry-list recommended-entry-list">
            {%- for popular_post in popular_posts.json %}
              <li class="item">
                <div class="content-box">
                  <div class="meta-container">
                    {%- if popular_post.date and popular_post.date != '' %}
                      <div class="date">{{ popular_post.date }}</div>
                    {%- endif %}

                    {%- if popular_post.tags and popular_post.tags.length > 0 %}
                      <div class="tag_list">
                        {%- for popular_post_tag in popular_post.tags %}
                          <a href="{{ popular_post_tag.path }}" target="_blank" rel="" class="tag"> {{ popular_post_tag.name }} </a>
                        {%- endfor %}
                      </div>
                    {%- endif %}
                  </div>
                  <div class="main-row">
                    <div class="main-box">
                      <div class="title-row">
                        <a
                          href="{{ popular_post.path }}"
                          target="_blank"
                          class="title"
                        >
                          {{ popular_post.title }}
                        </a>
                      </div>
                      <div class="abstract">
                        <a
                          href="{{ popular_post.path }}"
                          target="_blank"
                        >
                          {{ popular_post.excerpt }}
                        </a>
                      </div>
                    </div>
                    {%- if popular_post.img and popular_post.img != '' %}
                      <img
                        src="{{ popular_post.img }}"
                        alt="{{ popular_post.title }}"
                        class="lazy thumb"
                      />
                    {%- endif %}
                  </div>
                </div>
              </li>
            {%- endfor %}
          </ul>
        </div>
      <div>
    </div>
  {%- endif %}
{%- endif %}
