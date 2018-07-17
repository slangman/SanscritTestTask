package com.hustleind.entity;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user")
@EqualsAndHashCode
@NoArgsConstructor
public class User {
    @Getter
    @Setter
    @Id
    @SequenceGenerator(name = "userSeq", sequenceName = "USER_SEQUENCE", allocationSize = 0)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usersSeq")
    private int id;

    @Getter
    @Setter
    private String login;

    @Getter
    @Setter
    private String passwordHash;

    @Getter
    @Setter
    private String fName;

    @Getter
    @Setter
    private String lName;

    @Getter
    @Setter
    private boolean enabled = true;

    @Getter
    @Setter
    private String permission = "ROLE_USER";

    @Getter
    @Setter
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Task> tasks = null;

}
