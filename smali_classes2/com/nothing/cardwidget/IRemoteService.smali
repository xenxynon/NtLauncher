.class public interface abstract Lcom/nothing/cardwidget/IRemoteService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/IRemoteService$Stub;,
        Lcom/nothing/cardwidget/IRemoteService$Default;
    }
.end annotation


# virtual methods
.method public abstract callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract startListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z
.end method

.method public abstract stopListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z
.end method
