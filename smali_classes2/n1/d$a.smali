.class Ln1/d$a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/d;->a(Ll1/e;Lr1/a;)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ll1/e;

.field final synthetic e:Lr1/a;

.field final synthetic f:Ln1/d;


# direct methods
.method constructor <init>(Ln1/d;ZZLl1/e;Lr1/a;)V
    .locals 0

    iput-object p1, p0, Ln1/d$a;->f:Ln1/d;

    iput-boolean p2, p0, Ln1/d$a;->b:Z

    iput-boolean p3, p0, Ln1/d$a;->c:Z

    iput-object p4, p0, Ln1/d$a;->d:Ll1/e;

    iput-object p5, p0, Ln1/d$a;->e:Lr1/a;

    invoke-direct {p0}, Ll1/t;-><init>()V

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

    iget-object v0, p0, Ln1/d$a;->a:Ll1/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln1/d$a;->d:Ll1/e;

    iget-object v1, p0, Ln1/d$a;->f:Ln1/d;

    iget-object v2, p0, Ln1/d$a;->e:Lr1/a;

    invoke-virtual {v0, v1, v2}, Ll1/e;->n(Ll1/u;Lr1/a;)Ll1/t;

    move-result-object v0

    iput-object v0, p0, Ln1/d$a;->a:Ll1/t;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Ln1/d$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls1/a;->P()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Ln1/d$a;->e()Ll1/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ln1/d$a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-direct {p0}, Ln1/d$a;->e()Ll1/t;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
