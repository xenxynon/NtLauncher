.class public final synthetic Lcom/android/launcher3/uioverrides/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

.field public final synthetic h:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/c;->g:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/c;->h:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/c;->g:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/c;->h:Lcom/android/launcher3/util/SafeCloseable;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->f(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V

    return-void
.end method
