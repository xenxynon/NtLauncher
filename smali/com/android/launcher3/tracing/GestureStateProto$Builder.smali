.class public final Lcom/android/launcher3/tracing/GestureStateProto$Builder;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/GestureStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Lcom/android/launcher3/tracing/GestureStateProto;",
        "Lcom/android/launcher3/tracing/GestureStateProto$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto;->access$000()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/GestureStateProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/GestureStateProto;->access$100(Lcom/android/launcher3/tracing/GestureStateProto;Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    return-object p0
.end method
