.class public abstract Lq5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$b;


# instance fields
.field private final key:Lq5/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/a;->key:Lq5/g$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lq5/g$b$a;->a(Lq5/g$b;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->b(Lq5/g$b;Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lq5/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lq5/a;->key:Lq5/g$c;

    return-object p0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->c(Lq5/g$b;Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Lq5/g$b$a;->d(Lq5/g$b;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
