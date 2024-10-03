.class public final synthetic Lx/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/states/RotationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/states/RotationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/a;->g:Lcom/android/launcher3/states/RotationHelper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lx/a;->g:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0, p1}, Lcom/android/launcher3/states/RotationHelper;->a(Lcom/android/launcher3/states/RotationHelper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
