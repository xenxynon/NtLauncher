.class public abstract Lq5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lq5/g$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lq5/g$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final g:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Lq5/g$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final h:Lq5/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g$c;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "TB;>;",
            "Ly5/l<",
            "-",
            "Lq5/g$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq5/b;->g:Ly5/l;

    instance-of p2, p1, Lq5/b;

    if-eqz p2, :cond_0

    check-cast p1, Lq5/b;

    iget-object p1, p1, Lq5/b;->h:Lq5/g$c;

    :cond_0
    iput-object p1, p0, Lq5/b;->h:Lq5/g$c;

    return-void
.end method


# virtual methods
.method public final a(Lq5/g$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object p0, p0, Lq5/b;->h:Lq5/g$c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b(Lq5/g$b;)Lq5/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$b;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq5/b;->g:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq5/g$b;

    return-object p0
.end method
