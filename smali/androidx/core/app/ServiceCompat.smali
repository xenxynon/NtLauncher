.class public final Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$Api34Impl;,
        Landroidx/core/app/ServiceCompat$Api29Impl;,
        Landroidx/core/app/ServiceCompat$Api24Impl;,
        Landroidx/core/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field private static final FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_Q:I = 0xff

.field private static final FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U:I = 0x40000fff

.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 1
    .param p0    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
        }
    .end annotation

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$Api34Impl;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$Api29Impl;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    :goto_0
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .locals 0
    .param p0    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/core/app/ServiceCompat$Api24Impl;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method
