.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/b$a;
    }
.end annotation


# instance fields
.field private final g:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->g:Ln1/c;

    return-void
.end method


# virtual methods
.method public a(Ll1/e;Lr1/a;)Ll1/t;
    .locals 3
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

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Ln1/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lr1/a;->b(Ljava/lang/reflect/Type;)Lr1/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ll1/e;->m(Lr1/a;)Ll1/t;

    move-result-object v1

    iget-object p0, p0, Lo1/b;->g:Ln1/c;

    invoke-virtual {p0, p2}, Ln1/c;->a(Lr1/a;)Ln1/i;

    move-result-object p0

    new-instance p2, Lo1/b$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lo1/b$a;-><init>(Ll1/e;Ljava/lang/reflect/Type;Ll1/t;Ln1/i;)V

    return-object p2
.end method
