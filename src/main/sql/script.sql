CREATE TABLE resources
(
    id      RAW(16)        NOT NULL,
    name    varchar2(64)   NOT NULL,
    content varchar2(2048) NOT NULL,
    CONSTRAINT resources_pk PRIMARY KEY (id)
);

CREATE TABLE users
(
    id         RAW(16)      NOT NULL,
    first_name varchar2(64) NOT NULL,
    last_name  varchar2(64) NOT NULL,
    login      varchar2(64) NOT NULL,
    password   varchar2(64) NOT NULL,
    CONSTRAINT unique_login UNIQUE (login),
    CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE users_resources
(
    user_id     RAW(16) NOT NULL,
    resource_id RAW(16) NOT NULL,
    CONSTRAINT users_resources_pk PRIMARY KEY (user_id, resource_id)
);

ALTER TABLE users_resources
    ADD CONSTRAINT user_resource_resource
        FOREIGN KEY (resource_id)
            REFERENCES resources (id);

ALTER TABLE users_resources
    ADD CONSTRAINT user_resource_user
        FOREIGN KEY (user_id)
            REFERENCES users (id);

insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Judd', 'Minchin', 'test', 'test');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Maisie', 'Chaters', 'china', 'concept');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Vita', 'Lomond', 'benin', 'vision-oriented');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Weylin', 'Drohun', 'armenia', 'strategy');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Maryl', 'Margrie', 'ireland', 'implemented');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Erma', 'Duplock', 'philippines', 'open-system');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Tami', 'Raatz', 'ukraine', 'zero-defect');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Gusella', 'Ledington', 'indonesia', 'software');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Beatrisa', 'Lampbrecht', 'yemen', 'disintermediate');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Dar', 'Pountney', 'belarus', 'hybrid');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Bambie', 'Folbigg', 'brazil', 'diverse');
insert into users (id, first_name, last_name, login, password)
values (sys_guid(), 'Augie', 'Falconer-Taylor', 'russia', 'model');
commit;
insert into resources (id, name, content)
values (sys_guid(), 'Mitsubishi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Ford', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Mercedes-Benz', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Pontiac', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Dodge', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Hyundai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Toyota', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Infiniti', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Plymouth', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Jeep', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Acura', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Audi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
insert into resources (id, name, content)
values (sys_guid(), 'Nissan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt ultricies egestas. Proin luctus sem congue tempor varius. Quisque risus sem, finibus condimentum sem ac, semper sollicitudin quam. Praesent dui felis, bibendum et justo nec, congue blandit mi. In arcu nunc, eleifend eu lacinia venenatis, pharetra sit amet nunc. Aliquam sed suscipit dui. Cras id augue vel purus commodo porttitor eu dictum enim. Proin feugiat fermentum interdum. Mauris odio leo, tempus sed euismod a, varius vitae quam. Ut tempus magna ac nisl congue auctor. Fusce venenatis turpis nec lobortis dignissim. Nam at fermentum ante.
In hac habitasse platea dictumst. Praesent pharetra neque neque, quis dictum diam blandit moles. Fusce mollis, metus ac dignissim consequat, nisi purus condimentum justo, scelerisque mollis velit libero eget lectus. Mauris massa neque, malesuada quis porta vel, ultrices non justo. Nulla euismod dolor eu mi facilisis, pharetra auctor massa tincidunt. Proin lacinia lacus non lorem dapibus, eget congue purus posuere. Mauris efficitur ligula sem, eget condimentum nisl placerat et. Integer odio massa, lacinia interdum leo dictum, bibendum sollicitudin tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Ut eu ante sit amet leo congue sollicitudin. Etiam eget semper mauris. Suspendisse iaculis, felis ut accumsan rutrum, eros magna vulputate eros, sed fermentum turpis dolor non erat. Aenean non rhoncus turpis. Suspendisse potenti. Aliquam erat volutpat. Pellentesque lacus mauris, suscipit quis nulla ornare, volutpat ultricies nisl. Pellentesque semper at lacus vitae facilisis. Donec ornare rutrum mi, sed feugiat mauris tincidunt et. Suspendisse cursus neque quis felis molestie pellentesque. Curabitur a urna fermentum, tempus diam eget, aliquam felis. Donec laoreet, tortor id porttitor suscipit, orci elit tincidunt ante, at pulvinar augue arcu vel erat.
Integer tempor, eros a ullamcorper tincidunt, risus nisi tincidunt felis, ut interdum ex nisi sit amet odio. Vestibulum rhoncus sagittis volut.');
commit;
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Judd'
  AND (r.name LIKE ('A%') OR r.name LIKE ('M%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Maisie'
  AND (r.name LIKE ('A%') OR r.name LIKE ('M%') OR r.name LIKE ('N%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Vita'
  AND (r.name LIKE ('A%') OR r.name LIKE ('M%') OR r.name LIKE ('N%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Weylin'
  AND (r.name LIKE ('A%') OR r.name LIKE ('M%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Maryl'
  AND (r.name LIKE ('J%') OR r.name LIKE ('P%') OR r.name LIKE ('I%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Erma'
  AND (r.name LIKE ('J%') OR r.name LIKE ('P%') OR r.name LIKE ('I%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Tami'
  AND (r.name LIKE ('J%') OR r.name LIKE ('P%') OR r.name LIKE ('I%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Gusella'
  AND (r.name LIKE ('J%') OR r.name LIKE ('P%') OR r.name LIKE ('I%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Beatrisa'
  AND (r.name LIKE ('T%') OR r.name LIKE ('H%') OR r.name LIKE ('D%') OR r.name LIKE ('F%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Dar'
  AND (r.name LIKE ('T%') OR r.name LIKE ('H%') OR r.name LIKE ('D%') OR r.name LIKE ('F%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Bambie'
  AND (r.name LIKE ('T%') OR r.name LIKE ('H%') OR r.name LIKE ('D%') OR r.name LIKE ('F%'));
insert into users_resources (user_id, resource_id)
SELECT u.id, r.id
FROM users u,
     resources r
WHERE u.first_name = 'Augie'
  AND (r.name LIKE ('T%') OR r.name LIKE ('H%') OR r.name LIKE ('D%') OR r.name LIKE ('F%'));
commit;