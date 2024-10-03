.class Ll1/e$f;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
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
.field private a:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Ll1/e$f;->a:Ll1/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Ll1/e$f;->a:Ll1/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public e(Ll1/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/t<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ll1/e$f;->a:Ll1/t;

    if-nez v0, :cond_0

    iput-object p1, p0, Ll1/e$f;->a:Ll1/t;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
