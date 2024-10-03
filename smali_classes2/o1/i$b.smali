.class public final Lo1/i$b;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll1/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ln1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln1/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo1/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ln1/i;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/i<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo1/i$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll1/t;-><init>()V

    iput-object p1, p0, Lo1/i$b;->a:Ln1/i;

    iput-object p2, p0, Lo1/i$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT;"
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
    iget-object v0, p0, Lo1/i$b;->a:Ln1/i;

    invoke-interface {v0}, Ln1/i;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ls1/a;->b()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ls1/a;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo1/i$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/i$c;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lo1/i$c;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lo1/i$c;->a(Ls1/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ls1/a;->P()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ls1/a;->l()V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ll1/r;

    invoke-direct {p1, p0}, Ll1/r;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Ls1/c;->f()Ls1/c;

    :try_start_0
    iget-object p0, p0, Lo1/i$b;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/i$c;

    invoke-virtual {v0, p2}, Lo1/i$c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo1/i$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ls1/c;->s(Ljava/lang/String;)Ls1/c;

    invoke-virtual {v0, p1, p2}, Lo1/i$c;->b(Ls1/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ls1/c;->l()Ls1/c;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
