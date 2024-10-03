.class public final synthetic Lw/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/d;->g:Lcom/android/launcher3/statehandlers/DepthController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw/d;->g:Lcom/android/launcher3/statehandlers/DepthController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->a(Lcom/android/launcher3/statehandlers/DepthController;Z)V

    return-void
.end method
