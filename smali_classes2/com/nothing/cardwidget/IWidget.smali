.class public interface abstract Lcom/nothing/cardwidget/IWidget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/IWidget$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getReactDelay()J
.end method

.method public abstract send(Landroid/os/Message;)V
.end method

.method public abstract send(Ljava/lang/Runnable;)V
.end method
