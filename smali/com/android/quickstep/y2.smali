.class public final synthetic Lcom/android/quickstep/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/OverviewCommandHelper;

.field public final synthetic h:Lcom/android/quickstep/BaseActivityInterface;

.field public final synthetic i:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y2;->g:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/y2;->h:Lcom/android/quickstep/BaseActivityInterface;

    iput-object p3, p0, Lcom/android/quickstep/y2;->i:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/y2;->g:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v1, p0, Lcom/android/quickstep/y2;->h:Lcom/android/quickstep/BaseActivityInterface;

    iget-object p0, p0, Lcom/android/quickstep/y2;->i:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/OverviewCommandHelper;->e(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method
