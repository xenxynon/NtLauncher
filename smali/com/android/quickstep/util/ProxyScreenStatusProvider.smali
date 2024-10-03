.class public Lcom/android/quickstep/util/ProxyScreenStatusProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a;


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls0/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-direct {v0}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ls0/a$a;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->addCallback(Ls0/a$a;)V

    return-void
.end method

.method public addCallback(Ls0/a$a;)V
    .locals 0
    .param p1    # Ls0/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/android/quickstep/util/d0;->g:Lcom/android/quickstep/util/d0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/android/quickstep/util/e0;->g:Lcom/android/quickstep/util/e0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/android/quickstep/util/f0;->g:Lcom/android/quickstep/util/f0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ls0/a$a;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->removeCallback(Ls0/a$a;)V

    return-void
.end method

.method public removeCallback(Ls0/a$a;)V
    .locals 0
    .param p1    # Ls0/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
