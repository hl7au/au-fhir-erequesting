{%- for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd1= sd_hash[1] -%}
  {%- unless sd1.type == "Extension" -%}
    {% assign types =  types | append: "," | append: sd1.type %}
  {%- endunless -%}
{% endfor %}
{% assign my_types = types | split: "," %}
{% assign my_types = my_types | sort | uniq %}
{% for i in my_types offset:1 %}
  <h4>{{ i }}</h4>
  <ul>
    {%- for sd_hash in site.data.structuredefinitions -%}
      {%- assign sd1 = sd_hash[1] -%}
      {%- if sd1.type == i %}
        {%- assign new = false -%}
        {%- assign agrandparent = false -%}
        {%- assign aparent = false -%}
        {%- assign achild = false -%}
        {%- for sd_hash2 in site.data.structuredefinitions -%}
          {%- assign sd2 = sd_hash2[1] -%}
          {%- for sd_hash3 in site.data.structuredefinitions -%}
            {%- assign sd3 = sd_hash3[1] -%}
            {% if sd1.name == sd2.basename and sd2.name == sd3.basename %}
              {%- assign agrandparent = true -%}
              {% break %}
            {% endif %}
          {% endfor %}
          {% if agrandparent %}
            {% break %}
          {% elsif sd1.basename == sd2.name %}
            {%- assign achild = true -%}
            {% break %}
          {% elsif sd1.name == sd2.basename%}
            {%- assign aparent = true -%}
            {% break %}
          {% endif %}
        {% endfor %}

        {%- for new_stuff in site.data.new_stuff -%}
           {%- if new_stuff == sd1.name -%}
             {%- assign new = true -%}
             {%- break -%}
           {%- endif -%}
        {%- endfor -%}

        {%- unless agrandparent or aparent or achild -%}
          {%- if new -%}
            <li><a href="{{sd1.path}}"><span class="bg-success" markdown="1">{{sd1.title}}</span><!-- new-content --></a></li>
          {% else %}
            <li><a href="{{sd1.path}}">{{sd1.title}}</a></li>
          {% endif %}
        {%- endunless -%}

        {%- if agrandparent -%}
          {%- if new -%}
            <li><a href="{{sd1.path}}"><span class="bg-success" markdown="1">{{sd1.title}}</span><!-- new-content --></a>
          {% else %}
            <li><a href="{{sd1.path}}">{{sd1.title}}</a>
          {% endif %}
          <ul>
          {%- for sd_hash2 in site.data.structuredefinitions -%}
            {%- assign sd2 = sd_hash2[1] -%}
            {% if sd1.name == sd2.basename %}
              {%- assign new = false -%}
              {% for new_stuff in site.data.new_stuff %}
                {%- if new_stuff == sd2.name -%}
                  {%- assign new = true -%}
                  {%- break -%}
                {%- endif -%}
              {%- endfor -%}

              {%- if new -%}
                <li><a href="{{sd2.path}}"><span class="bg-success" markdown="1">{{sd2.title}}</span><!-- new-content --></a>
              {% else %}
                <li><a href="{{sd2.path}}">{{sd2.title}}</a>
              {% endif %}

              <ul>
              {%- for sd_hash3 in site.data.structuredefinitions -%}
                {%- assign sd3 = sd_hash3[1] -%}
                {% if sd2.name == sd3.basename %}
                  {%- assign new = false -%}
                  {% for new_stuff in site.data.new_stuff %}
                    {%- if new_stuff == sd3.name -%}
                      {%- assign new = true -%}
                      {%- break -%}
                    {%- endif -%}
                  {%- endfor -%}

                  {%- if new -%}
                      <li><a href="{{sd3.path}}"><span class="bg-success" markdown="1">{{sd3.title}}</span><!-- new-content --></a></li>
                  {% else %}
                      <li><a href="{{sd3.path}}">{{sd3.title}}</a></li>
                  {% endif %}
                {% endif %}
              {% endfor %}
              </ul>
          </li>
            {% endif %}
          {% endfor %}
           </ul>
          </li>
        {%- elsif aparent -%}
          {%- if new -%}
            <li><a href="{{sd1.path}}"><span class="bg-success" markdown="1">{{sd1.title}}</span><!-- new-content --></a>
          {% else %}
            <li><a href="{{sd1.path}}">{{sd1.title}}</a>
          {% endif %}
              <ul>
              {%- for sd_hash2 in site.data.structuredefinitions -%}
                {%- assign sd2 = sd_hash2[1] -%}
                {% if sd1.name == sd2.basename %}
                  {%- assign new = false -%}
                  {% for new_stuff in site.data.new_stuff %}
                    {%- if new_stuff == sd2.name -%}
                      {%- assign new = true -%}
                      {%- break -%}
                    {%- endif -%}
                  {%- endfor -%}

                  {%- if new -%}
                    <li><a href="{{sd2.path}}"><span class="bg-success" markdown="1">{{sd2.title}}</span><!-- new-content --></a></li>
                  {% else %}
                    <li><a href="{{sd2.path}}">{{sd2.title}}</a></li>
                  {% endif %}

                {% endif %}
              {% endfor %}
              </ul>
          </li>
        {%- endif -%}

      {%- endif -%}
    {%- endfor -%}
  </ul>
{% endfor %}