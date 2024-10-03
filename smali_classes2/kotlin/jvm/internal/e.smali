.class public abstract Lkotlin/jvm/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf6/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/e$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lf6/b;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/jvm/internal/e$a;->a()Lkotlin/jvm/internal/e$a;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/e;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/e;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/e;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/e;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/e;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/e;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/e;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/e;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lf6/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lf6/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()Lf6/b;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/e;->reflected:Lf6/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->computeReflected()Lf6/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/e;->reflected:Lf6/b;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lf6/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/e;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lf6/d;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/e;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lkotlin/jvm/internal/e;->isTopLevel:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/b0;->c(Ljava/lang/Class;)Lf6/d;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->getParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getReflected()Lf6/b;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->compute()Lf6/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lx5/b;

    invoke-direct {p0}, Lx5/b;-><init>()V

    throw p0
.end method

.method public getReturnType()Lf6/j;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->getReturnType()Lf6/j;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/e;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lf6/k;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->getVisibility()Lf6/k;

    move-result-object p0

    return-object p0
.end method

.method public isAbstract()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->isAbstract()Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->isFinal()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getReflected()Lf6/b;

    move-result-object p0

    invoke-interface {p0}, Lf6/b;->isSuspend()Z

    move-result p0

    return p0
.end method
