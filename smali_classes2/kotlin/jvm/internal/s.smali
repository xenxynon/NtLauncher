.class public abstract Lkotlin/jvm/internal/s;
.super Lkotlin/jvm/internal/w;
.source "SourceFile"

# interfaces
.implements Lf6/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/w;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/w;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/w;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lf6/b;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/b0;->e(Lkotlin/jvm/internal/s;)Lf6/h;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/w;->getReflected()Lf6/f;

    move-result-object p0

    check-cast p0, Lf6/h;

    invoke-interface {p0, p1}, Lf6/h;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lf6/f$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/s;->getGetter()Lf6/h$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lf6/h$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/w;->getReflected()Lf6/f;

    move-result-object p0

    check-cast p0, Lf6/h;

    invoke-interface {p0}, Lf6/h;->getGetter()Lf6/h$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lf6/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
