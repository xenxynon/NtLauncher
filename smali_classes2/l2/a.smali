.class public final Ll2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/a$a;
    }
.end annotation


# static fields
.field public static final l:Ll2/a$a;


# instance fields
.field private final g:Landroid/app/AlarmManager;

.field private final h:Landroid/app/AlarmManager$OnAlarmListener;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ll2/a;->l:Ll2/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "mAlarmManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/a;->g:Landroid/app/AlarmManager;

    iput-object p2, p0, Ll2/a;->h:Landroid/app/AlarmManager$OnAlarmListener;

    iput-object p3, p0, Ll2/a;->i:Ljava/lang/String;

    iput-object p4, p0, Ll2/a;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Ll2/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/a;->g:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll2/a;->k:Z

    :cond_0
    return-void
.end method

.method public final b(JI)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    iget-boolean p3, p0, Ll2/a;->k:Z

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ll2/a;->a()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean p3, p0, Ll2/a;->k:Z

    if-eqz p3, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-boolean p3, p0, Ll2/a;->k:Z

    xor-int/2addr p3, v0

    if-eqz p3, :cond_4

    :cond_3
    :goto_0
    iget-object v1, p0, Ll2/a;->g:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Ll2/a;->i:Ljava/lang/String;

    iget-object v7, p0, Ll2/a;->j:Landroid/os/Handler;

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v0, p0, Ll2/a;->k:Z

    return v0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ll2/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " timeout is already scheduled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAlarm()V
    .locals 1

    iget-boolean v0, p0, Ll2/a;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll2/a;->k:Z

    iget-object p0, p0, Ll2/a;->h:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {p0}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V

    return-void
.end method
