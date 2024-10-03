.class public final Lo1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/g$a;
    }
.end annotation


# instance fields
.field private final g:Ln1/c;

.field final h:Z


# direct methods
.method public constructor <init>(Ln1/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/g;->g:Ln1/c;

    iput-boolean p2, p0, Lo1/g;->h:Z

    return-void
.end method

.method private b(Ll1/e;Ljava/lang/reflect/Type;)Ll1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ll1/t<",
            "*>;"
        }
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lo1/n;->f:Ll1/t;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ll1/e;Lr1/a;)Ll1/t;
    .locals 11
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

    move-result-object v0

    invoke-virtual {p2}, Lr1/a;->c()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Ln1/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ln1/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lo1/g;->b(Ll1/e;Ljava/lang/reflect/Type;)Ll1/t;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object v9

    iget-object v3, p0, Lo1/g;->g:Ln1/c;

    invoke-virtual {v3, p2}, Ln1/c;->a(Lr1/a;)Ln1/i;

    move-result-object v10

    new-instance p2, Lo1/g$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lo1/g$a;-><init>(Lo1/g;Ll1/e;Ljava/lang/reflect/Type;Ll1/t;Ljava/lang/reflect/Type;Ll1/t;Ln1/i;)V

    return-object p2
.end method
