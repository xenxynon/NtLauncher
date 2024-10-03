.class final Lo1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/e;Lr1/a;)Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll1/e;",
            "Lr1/a<",
            "TT;>;)",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lr1/a;->e()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p2, :cond_1

    instance-of p2, p0, Ljava/lang/Class;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0}, Ln1/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object p2

    new-instance v0, Lo1/a;

    invoke-static {p0}, Ln1/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lo1/a;-><init>(Ll1/e;Ll1/t;Ljava/lang/Class;)V

    return-object v0
.end method
