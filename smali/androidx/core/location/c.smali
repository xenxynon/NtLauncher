.class public final synthetic Landroidx/core/location/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroidx/core/util/Consumer;

.field public final synthetic h:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/c;->g:Landroidx/core/util/Consumer;

    iput-object p2, p0, Landroidx/core/location/c;->h:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/c;->g:Landroidx/core/util/Consumer;

    iget-object p0, p0, Landroidx/core/location/c;->h:Landroid/location/Location;

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->a(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void
.end method
