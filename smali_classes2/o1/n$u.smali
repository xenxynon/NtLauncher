.class final Lo1/n$u;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ll1/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/n$u;->e(Ls1/a;)Ll1/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ll1/j;

    invoke-virtual {p0, p1, p2}, Lo1/n$u;->f(Ls1/c;Ll1/j;)V

    return-void
.end method

.method public e(Ls1/a;)Ll1/j;
    .locals 3

    sget-object v0, Lo1/n$b0;->a:[I

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Ll1/m;

    invoke-direct {v0}, Ll1/m;-><init>()V

    invoke-virtual {p1}, Ls1/a;->b()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ls1/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo1/n$u;->e(Ls1/a;)Ll1/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ll1/m;->h(Ljava/lang/String;Ll1/j;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls1/a;->l()V

    return-object v0

    :pswitch_1
    new-instance v0, Ll1/g;

    invoke-direct {v0}, Ll1/g;-><init>()V

    invoke-virtual {p1}, Ls1/a;->a()V

    :goto_1
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lo1/n$u;->e(Ls1/a;)Ll1/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/g;->h(Ll1/j;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls1/a;->k()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Ls1/a;->B()V

    sget-object p0, Ll1/l;->a:Ll1/l;

    return-object p0

    :pswitch_3
    new-instance p0, Ll1/o;

    invoke-virtual {p1}, Ls1/a;->D()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll1/o;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Ll1/o;

    invoke-virtual {p1}, Ls1/a;->u()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Ll1/o;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Ls1/a;->D()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ll1/o;

    new-instance v0, Ln1/g;

    invoke-direct {v0, p0}, Ln1/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ll1/o;-><init>(Ljava/lang/Number;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ls1/c;Ll1/j;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ll1/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ll1/j;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ll1/j;->c()Ll1/o;

    move-result-object p0

    invoke-virtual {p0}, Ll1/o;->q()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ll1/o;->m()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1/c;->H(Ljava/lang/Number;)Ls1/c;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Ll1/o;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ll1/o;->h()Z

    move-result p0

    invoke-virtual {p1, p0}, Ls1/c;->J(Z)Ls1/c;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Ll1/o;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1/c;->I(Ljava/lang/String;)Ls1/c;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Ll1/j;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ls1/c;->c()Ls1/c;

    invoke-virtual {p2}, Ll1/j;->a()Ll1/g;

    move-result-object p2

    invoke-virtual {p2}, Ll1/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/j;

    invoke-virtual {p0, p1, v0}, Lo1/n$u;->f(Ls1/c;Ll1/j;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ls1/c;->k()Ls1/c;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ll1/j;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls1/c;->f()Ls1/c;

    invoke-virtual {p2}, Ll1/j;->b()Ll1/m;

    move-result-object p2

    invoke-virtual {p2}, Ll1/m;->i()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ls1/c;->s(Ljava/lang/String;)Ls1/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/j;

    invoke-virtual {p0, p1, v0}, Lo1/n$u;->f(Ls1/c;Ll1/j;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ls1/c;->l()Ls1/c;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    :goto_3
    return-void
.end method
