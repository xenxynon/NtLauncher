.class public final synthetic Lcom/android/quickstep/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p6;->a:Lcom/android/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/p6;->a:Lcom/android/quickstep/SystemUiProxy;

    check-cast p1, Landroid/window/RemoteTransition;

    check-cast p2, Landroid/window/TransitionFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    return-void
.end method
