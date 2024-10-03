.class public final Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/c;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Landroid/app/ActivityManager;

.field private b:Ljava/lang/Boolean;

.field private final c:Lp0/a$a;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "activityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/a;->a:Landroid/app/ActivityManager;

    new-instance p1, Lp0/a$a;

    invoke-direct {p1, p0}, Lp0/a$a;-><init>(Lp0/a;)V

    iput-object p1, p0, Lp0/a;->c:Lp0/a$a;

    return-void
.end method

.method public static final synthetic a(Lp0/a;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lp0/a;->c(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lp0/a;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lp0/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private final c(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
