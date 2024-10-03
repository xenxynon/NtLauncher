.class public final Ll6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g;


# instance fields
.field public final g:Ljava/lang/Throwable;

.field private final synthetic h:Lq5/g;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lq5/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/l;->g:Ljava/lang/Throwable;

    iput-object p2, p0, Ll6/l;->h:Lq5/g;

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

    iget-object p0, p0, Ll6/l;->h:Lq5/g;

    invoke-interface {p0, p1, p2}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

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

    iget-object p0, p0, Ll6/l;->h:Lq5/g;

    invoke-interface {p0, p1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

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

    iget-object p0, p0, Ll6/l;->h:Lq5/g;

    invoke-interface {p0, p1}, Lq5/g;->minusKey(Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    iget-object p0, p0, Ll6/l;->h:Lq5/g;

    invoke-interface {p0, p1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
