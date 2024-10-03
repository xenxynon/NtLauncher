.class final Lo1/b$a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ll1/t<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ln1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln1/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll1/e;Ljava/lang/reflect/Type;Ll1/t;Ln1/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/e;",
            "Ljava/lang/reflect/Type;",
            "Ll1/t<",
            "TE;>;",
            "Ln1/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll1/t;-><init>()V

    new-instance v0, Lo1/m;

    invoke-direct {v0, p1, p3, p2}, Lo1/m;-><init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo1/b$a;->a:Ll1/t;

    iput-object p4, p0, Lo1/b$a;->b:Ln1/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/b$a;->e(Ls1/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lo1/b$a;->f(Ls1/c;Ljava/util/Collection;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
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
    iget-object v0, p0, Lo1/b$a;->b:Ln1/i;

    invoke-interface {v0}, Ln1/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Ls1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo1/b$a;->a:Ll1/t;

    invoke-virtual {v1, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls1/a;->k()V

    return-object v0
.end method

.method public f(Ls1/c;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Ls1/c;->c()Ls1/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo1/b$a;->a:Ll1/t;

    invoke-virtual {v1, p1, v0}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls1/c;->k()Ls1/c;

    return-void
.end method
