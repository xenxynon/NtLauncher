.class public final synthetic Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:J

.field public final synthetic h:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public synthetic constructor <init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq/c;->g:J

    iput-object p3, p0, Lq/c;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lq/c;->g:J

    iget-object p0, p0, Lq/c;->h:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/pm/PinRequestHelper;->a(JLandroid/content/pm/LauncherApps$PinItemRequest;)V

    return-void
.end method
