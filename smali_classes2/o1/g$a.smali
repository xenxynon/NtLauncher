.class final Lo1/g$a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ll1/t<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Ln1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln1/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lo1/g;


# direct methods
.method public constructor <init>(Lo1/g;Ll1/e;Ljava/lang/reflect/Type;Ll1/t;Ljava/lang/reflect/Type;Ll1/t;Ln1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/e;",
            "Ljava/lang/reflect/Type;",
            "Ll1/t<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Ll1/t<",
            "TV;>;",
            "Ln1/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo1/g$a;->d:Lo1/g;

    invoke-direct {p0}, Ll1/t;-><init>()V

    new-instance p1, Lo1/m;

    invoke-direct {p1, p2, p4, p3}, Lo1/m;-><init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lo1/g$a;->a:Ll1/t;

    new-instance p1, Lo1/m;

    invoke-direct {p1, p2, p6, p5}, Lo1/m;-><init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lo1/g$a;->b:Ll1/t;

    iput-object p7, p0, Lo1/g$a;->c:Ln1/i;

    return-void
.end method

.method private e(Ll1/j;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ll1/j;->g()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ll1/j;->c()Ll1/o;

    move-result-object p0

    invoke-virtual {p0}, Ll1/o;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ll1/o;->m()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ll1/o;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ll1/o;->h()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ll1/o;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ll1/o;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p1}, Ll1/j;->e()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "null"

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/g$a;->f(Ls1/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lo1/g$a;->g(Ls1/c;Ljava/util/Map;)V

    return-void
.end method

.method public f(Ls1/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object v0

    sget-object v1, Ls1/b;->o:Ls1/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lo1/g$a;->c:Ln1/i;

    invoke-interface {v1}, Ln1/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Ls1/b;->g:Ls1/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Ls1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls1/a;->a()V

    iget-object v0, p0, Lo1/g$a;->a:Ll1/t;

    invoke-virtual {v0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lo1/g$a;->b:Ll1/t;

    invoke-virtual {v2, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ls1/a;->k()V

    goto :goto_0

    :cond_1
    new-instance p0, Ll1/r;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll1/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Ls1/a;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ls1/a;->b()V

    :goto_1
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ln1/f;->a:Ln1/f;

    invoke-virtual {v0, p1}, Ln1/f;->a(Ls1/a;)V

    iget-object v0, p0, Lo1/g$a;->a:Ll1/t;

    invoke-virtual {v0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lo1/g$a;->b:Ll1/t;

    invoke-virtual {v2, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ll1/r;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll1/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Ls1/a;->l()V

    :goto_2
    return-object v1
.end method

.method public g(Ls1/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    iget-object v0, p0, Lo1/g$a;->d:Lo1/g;

    iget-boolean v0, v0, Lo1/g;->h:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ls1/c;->f()Ls1/c;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ls1/c;->s(Ljava/lang/String;)Ls1/c;

    iget-object v1, p0, Lo1/g$a;->b:Ll1/t;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls1/c;->l()Ls1/c;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lo1/g$a;->a:Ll1/t;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ll1/t;->c(Ljava/lang/Object;)Ll1/j;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ll1/j;->d()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Ll1/j;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Ls1/c;->c()Ls1/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Ls1/c;->c()Ls1/c;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/j;

    invoke-static {v3, p1}, Ln1/l;->b(Ll1/j;Ls1/c;)V

    iget-object v3, p0, Lo1/g$a;->b:Ll1/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ls1/c;->k()Ls1/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ls1/c;->k()Ls1/c;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ls1/c;->f()Ls1/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/j;

    invoke-direct {p0, v3}, Lo1/g$a;->e(Ll1/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ls1/c;->s(Ljava/lang/String;)Ls1/c;

    iget-object v3, p0, Lo1/g$a;->b:Ll1/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ls1/c;->l()Ls1/c;

    :goto_6
    return-void
.end method
