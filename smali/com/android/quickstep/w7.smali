.class public final synthetic Lcom/android/quickstep/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/TopTaskTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TopTaskTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/w7;->a:Lcom/android/quickstep/TopTaskTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/w7;->a:Lcom/android/quickstep/TopTaskTracker;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->W(Lcom/android/quickstep/TopTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method
