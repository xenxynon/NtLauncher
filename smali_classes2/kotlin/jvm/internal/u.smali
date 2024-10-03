.class public abstract Lkotlin/jvm/internal/u;
.super Lkotlin/jvm/internal/w;
.source "SourceFile"

# interfaces
.implements Lf6/i;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    sget-object v1, Lkotlin/jvm/internal/e;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/w;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lf6/b;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/b0;->f(Lkotlin/jvm/internal/u;)Lf6/i;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lf6/i$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/w;->getReflected()Lf6/f;

    move-result-object p0

    check-cast p0, Lf6/i;

    invoke-interface {p0}, Lf6/i;->getGetter()Lf6/i$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Lf6/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
