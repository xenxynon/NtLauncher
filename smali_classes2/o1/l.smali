.class public final Lo1/l;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/l$b;
    }
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
.field private final a:Ll1/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ll1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ll1/e;

.field private final d:Lr1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ll1/u;

.field private final f:Lo1/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private g:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll1/q;Ll1/i;Ll1/e;Lr1/a;Ll1/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/q<",
            "TT;>;",
            "Ll1/i<",
            "TT;>;",
            "Ll1/e;",
            "Lr1/a<",
            "TT;>;",
            "Ll1/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ll1/t;-><init>()V

    new-instance v0, Lo1/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo1/l$b;-><init>(Lo1/l;Lo1/l$a;)V

    iput-object v0, p0, Lo1/l;->f:Lo1/l$b;

    iput-object p1, p0, Lo1/l;->a:Ll1/q;

    iput-object p2, p0, Lo1/l;->b:Ll1/i;

    iput-object p3, p0, Lo1/l;->c:Ll1/e;

    iput-object p4, p0, Lo1/l;->d:Lr1/a;

    iput-object p5, p0, Lo1/l;->e:Ll1/u;

    return-void
.end method

.method private e()Ll1/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lo1/l;->g:Ll1/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo1/l;->c:Ll1/e;

    iget-object v1, p0, Lo1/l;->e:Ll1/u;

    iget-object v2, p0, Lo1/l;->d:Lr1/a;

    invoke-virtual {v0, v1, v2}, Ll1/e;->n(Ll1/u;Lr1/a;)Ll1/t;

    move-result-object v0

    iput-object v0, p0, Lo1/l;->g:Ll1/t;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lo1/l;->b:Ll1/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo1/l;->e()Ll1/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ln1/l;->a(Ls1/a;)Ll1/j;

    move-result-object p1

    invoke-virtual {p1}, Ll1/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lo1/l;->b:Ll1/i;

    iget-object v1, p0, Lo1/l;->d:Lr1/a;

    invoke-virtual {v1}, Lr1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lo1/l;->f:Lo1/l$b;

    invoke-interface {v0, p1, v1, p0}, Ll1/i;->a(Ll1/j;Ljava/lang/reflect/Type;Ll1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    iget-object v0, p0, Lo1/l;->a:Ll1/q;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo1/l;->e()Ll1/t;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_1
    iget-object v1, p0, Lo1/l;->d:Lr1/a;

    invoke-virtual {v1}, Lr1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lo1/l;->f:Lo1/l$b;

    invoke-interface {v0, p2, v1, p0}, Ll1/q;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ll1/p;)Ll1/j;

    move-result-object p0

    invoke-static {p0, p1}, Ln1/l;->b(Ll1/j;Ls1/c;)V

    return-void
.end method
