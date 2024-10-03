.class public final Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$17200()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$18200(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$17900(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSpanX(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$17300(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-object p0
.end method

.method public setSpanY(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$17500(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-object p0
.end method

.method public setWidgetFeatures(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->access$18500(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    return-object p0
.end method
