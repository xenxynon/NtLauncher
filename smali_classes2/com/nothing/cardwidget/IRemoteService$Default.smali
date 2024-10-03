.class public Lcom/nothing/cardwidget/IRemoteService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
