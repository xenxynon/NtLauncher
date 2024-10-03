.class final Lo1/m;
.super Ll1/t;
.source "SourceFile"


# annotations
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
.field private final a:Ll1/e;

.field private final b:Ll1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/e;",
            "Ll1/t<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ll1/t;-><init>()V

    iput-object p1, p0, Lo1/m;->a:Ll1/e;

    iput-object p2, p0, Lo1/m;->b:Ll1/t;

    iput-object p3, p0, Lo1/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 0

    if-eqz p2, :cond_1

    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_0

    instance-of p0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez p0, :cond_0

    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
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

    iget-object p0, p0, Lo1/m;->b:Ll1/t;

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo1/m;->b:Ll1/t;

    iget-object v1, p0, Lo1/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lo1/m;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lo1/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lo1/m;->a:Ll1/e;

    invoke-static {v1}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object v0

    instance-of v1, v0, Lo1/i$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo1/m;->b:Ll1/t;

    instance-of v1, p0, Lo1/i$b;

    if-nez v1, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
