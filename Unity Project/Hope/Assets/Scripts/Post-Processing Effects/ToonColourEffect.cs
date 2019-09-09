using System;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

[Serializable]
[PostProcess(typeof(ToonColourEffectRenderer), PostProcessEvent.AfterStack, "Custom/ToonColourEffect")]
public sealed class ToonColourEffect : PostProcessEffectSettings
{
    [Range(0f, 1f), Tooltip("Effect intensity.")]
    public FloatParameter blend = new FloatParameter { value = 1f };
    [Range(1, 10), Tooltip("Amount of colour devisions..")]
    public IntParameter divisions = new IntParameter { value = 3 };
}

public sealed class ToonColourEffectRenderer : PostProcessEffectRenderer<ToonColourEffect>
{
    public override void Render(PostProcessRenderContext context)
    {
        PropertySheet sheet = context.propertySheets.Get(Shader.Find("Hidden/Custom/ToonColourEffect"));
        sheet.properties.SetFloat("_Blend", settings.blend);
        sheet.properties.SetInt("_Divisions", settings.divisions);
        context.command.BlitFullscreenTriangle(context.source, context.destination, sheet, 0);
    }
}