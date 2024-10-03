.class final Li6/m2;
.super Li6/c2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/c2;"
    }
.end annotation


# instance fields
.field private final k:Li6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li6/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/o<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Li6/c2;-><init>()V

    iput-object p1, p0, Li6/m2;->k:Li6/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/m2;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p1

    invoke-virtual {p1}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Li6/b0;

    iget-object p0, p0, Li6/m2;->k:Li6/o;

    if-eqz v0, :cond_0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    check-cast p1, Li6/b0;

    iget-object p1, p1, Li6/b0;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Li6/e2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
