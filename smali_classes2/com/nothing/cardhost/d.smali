.class public Lcom/nothing/cardhost/d;
.super Lg2/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardhost/d$b;,
        Lcom/nothing/cardhost/d$a;,
        Lcom/nothing/cardhost/d$c;
    }
.end annotation


# static fields
.field public static final p:Lcom/nothing/cardhost/d$b;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/nothing/cardhost/e;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/nothing/cardservice/CardWidgetViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/nothing/cardhost/d$a;

.field private l:Lw1/a;

.field private final m:Lcom/nothing/cardhost/d$c;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardhost/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardhost/d$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardhost/d;->p:Lcom/nothing/cardhost/d$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILw1/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg2/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->f:Landroid/content/Context;

    iput p2, p0, Lcom/nothing/cardhost/d;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.packageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/nothing/cardhost/d;->l:Lw1/a;

    new-instance p1, Lcom/nothing/cardhost/d$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const-string p3, "getMainLooper()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/nothing/cardhost/d$c;-><init>(Lcom/nothing/cardhost/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    new-instance p1, Lcom/nothing/cardhost/c;

    invoke-direct {p1, p0}, Lcom/nothing/cardhost/c;-><init>(Lcom/nothing/cardhost/d;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/nothing/cardhost/b;

    invoke-direct {p1, p0}, Lcom/nothing/cardhost/b;-><init>(Lcom/nothing/cardhost/d;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILw1/a;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardhost/d;-><init>(Landroid/content/Context;ILw1/a;)V

    return-void
.end method

.method private static final A(Lcom/nothing/cardhost/d;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/cardhost/e;

    invoke-virtual {v3}, Lcom/nothing/cardhost/e;->D()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final E(Lcom/nothing/cardhost/d;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/cardhost/e;

    invoke-virtual {v3}, Lcom/nothing/cardhost/e;->E()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final I(ILcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic i(Lcom/nothing/cardhost/d;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardhost/d;->E(Lcom/nothing/cardhost/d;)V

    return-void
.end method

.method public static synthetic j(Lcom/nothing/cardhost/d;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardhost/d;->A(Lcom/nothing/cardhost/d;)V

    return-void
.end method

.method public static final synthetic k(Lcom/nothing/cardhost/d;ILcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardhost/d;->I(ILcom/nothing/cardservice/CardWidgetViewInfo;)V

    return-void
.end method

.method public static synthetic q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/cardhost/d;->p(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final z(I)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public B(Lw1/a;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d;->l:Lw1/a;

    return-void
.end method

.method public C(Landroid/app/Activity;ILcom/nothing/cardservice/CardWidgetMetaInfo;ILandroid/os/Bundle;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nothing.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    const-string p2, "host_packagename"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Landroid/content/ComponentName;

    invoke-direct {p3, p0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    const/high16 p0, 0x54000000

    invoke-static {p1, p4, v0, p0, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const-string p0, "getActivity(activity, re\u2026NT, options).intentSender"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start config activity error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 4

    const-string v0, "Host"

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/nothing/cardhost/d$a;

    iget-object v3, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    invoke-direct {v2, v3}, Lcom/nothing/cardhost/d$a;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    sget-object v2, Ln5/t;->a:Ln5/t;

    :cond_0
    iget-object v2, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    iget v3, p0, Lcom/nothing/cardhost/d;->g:I

    iget-object p0, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    invoke-interface {v1, v2, v3, p0}, Lg2/m;->O(Ljava/lang/String;ILg2/l;)Z

    sget-object p0, Lh2/a;->a:Lh2/a;

    const-string v1, "start listener successfully."

    invoke-virtual {p0, v0, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget service dead?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public F()V
    .locals 4

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    iget v2, p0, Lcom/nothing/cardhost/d;->g:I

    iget-object v3, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    invoke-interface {v0, v1, v2, v3}, Lg2/m;->l(Ljava/lang/String;ILg2/l;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget service dead?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host"

    invoke-static {v1, v0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardhost/d;->k:Lcom/nothing/cardhost/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardhost/d;->F()V

    :cond_0
    sget-object v0, Lg2/i;->a:Lg2/i;

    invoke-virtual {v0, p0}, Lg2/i;->N(Lg2/i$b;)V

    invoke-virtual {p0}, Lg2/a;->h()V

    return-void
.end method

.method protected H(ILcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardhost/d;->I(ILcom/nothing/cardservice/CardWidgetViewInfo;)V

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object p0, Lh2/a;->a:Lh2/a;

    const-string v0, "Host"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive callback updateAppWidgetView. appWidgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/nothing/cardhost/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/nothing/cardhost/e;->W(Lcom/nothing/cardservice/CardWidgetViewInfo;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected J(IILcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 4

    sget-object v0, Lh2/a;->a:Lh2/a;

    const-string v1, "Host"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive callback viewDataChanged. widgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast v0, Lcom/nothing/cardhost/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/nothing/cardhost/e;->X(Lcom/nothing/cardservice/CardWidgetViewInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/nothing/cardhost/d;->I(ILcom/nothing/cardservice/CardWidgetViewInfo;)V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardhost/d;->D()V

    return-void
.end method

.method public l()I
    .locals 2

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    iget p0, p0, Lcom/nothing/cardhost/d;->g:I

    invoke-interface {v0, v1, p0}, Lg2/m;->k(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget service dead?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public m(ILcom/nothing/cardservice/CardWidgetMetaInfo;Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lg2/m;->C(ILcom/nothing/cardservice/CardWidgetMetaInfo;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "widget service dead?: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n()V
    .locals 2

    sget-object v0, Lg2/i;->a:Lg2/i;

    iget-object v1, p0, Lcom/nothing/cardhost/d;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lg2/i;->x(Landroid/content/Context;Lg2/i$b;)V

    return-void
.end method

.method protected o()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final p(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/cardhost/d;->v(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;

    move-result-object p1

    iget-object p4, p0, Lcom/nothing/cardhost/d;->l:Lw1/a;

    invoke-virtual {p1, p4}, Lcom/nothing/cardhost/e;->setHandler(Lw1/a;)V

    invoke-virtual {p1, p2, p3}, Lcom/nothing/cardhost/e;->Q(ILcom/nothing/cardservice/CardWidgetMetaInfo;)V

    iget-object p3, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p4, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p3

    new-instance v3, Lkotlin/jvm/internal/a0;

    invoke-direct {v3}, Lkotlin/jvm/internal/a0;-><init>()V

    iget-object p3, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    monitor-enter p3

    :try_start_1
    iget-object p4, p0, Lcom/nothing/cardhost/d;->j:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v3, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    if-nez p4, :cond_0

    sget-object p3, Lh2/a;->a:Lh2/a;

    const-string p4, "Host"

    const-string v0, "Host createView cacheViewInfo == null"

    invoke-virtual {p3, p4, v0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo2/b;->c()Li6/m0;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    new-instance v7, Lcom/nothing/cardhost/d$d;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardhost/d$d;-><init>(Lcom/nothing/cardhost/d;Lkotlin/jvm/internal/a0;ILcom/nothing/cardhost/e;Lq5/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    goto :goto_0

    :cond_0
    sget-object p0, Lh2/a;->a:Lh2/a;

    const-string p3, "Host"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host updateAppWidget using cache info>>>>>"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v3, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p0, Lcom/nothing/cardservice/CardWidgetViewInfo;

    invoke-virtual {p1, p0}, Lcom/nothing/cardhost/e;->W(Lcom/nothing/cardservice/CardWidgetViewInfo;)V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public r(I)V
    .locals 3

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, p1}, Lcom/nothing/cardhost/d;->z(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Lg2/m;->s(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Host"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget service dead?: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardhost/d;->h:Ljava/lang/String;

    iget p0, p0, Lcom/nothing/cardhost/d;->g:I

    invoke-interface {v0, v1, p0}, Lg2/m;->g(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget service dead?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected t(I)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object v1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/d;->u(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public u(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive callback app widget removed id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/nothing/cardhost/e;

    iget-object p0, p0, Lcom/nothing/cardhost/d;->l:Lw1/a;

    invoke-direct {p2, p1, p0, p4}, Lcom/nothing/cardhost/e;-><init>(Landroid/content/Context;Lw1/a;Z)V

    return-object p2
.end method

.method public w()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object v1, p0, Lcom/nothing/cardhost/d;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object v1, p0, Lcom/nothing/cardhost/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object p0, p0, Lcom/nothing/cardhost/d;->n:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public x()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object v1, p0, Lcom/nothing/cardhost/d;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object v1, p0, Lcom/nothing/cardhost/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->m:Lcom/nothing/cardhost/d$c;

    iget-object p0, p0, Lcom/nothing/cardhost/d;->o:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected y(ILcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 3

    const-string v0, "Host"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive callback provider change: cardId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/nothing/cardhost/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast p0, Lcom/nothing/cardhost/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/nothing/cardhost/e;->O(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
