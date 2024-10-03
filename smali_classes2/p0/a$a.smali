.class public final Lp0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp0/a;-><init>(Landroid/app/ActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lp0/a;


# direct methods
.method constructor <init>(Lp0/a;)V
    .locals 0

    iput-object p1, p0, Lp0/a$a;->g:Lp0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp0/a$a;->g:Lp0/a;

    invoke-static {p0, p1}, Lp0/a;->a(Lp0/a;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lp0/a;->b(Lp0/a;Ljava/lang/Boolean;)V

    return-void
.end method
