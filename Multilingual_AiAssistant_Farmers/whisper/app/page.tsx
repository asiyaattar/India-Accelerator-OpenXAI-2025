'use client'

import Transcript from '@/components/transcript'
import AudioManager from '@/components/audio-manager'
import { useTranscriber } from '@/hooks/useTranscriber'
import { Progress } from '@/components/ui/progress'

export default function Home() {
  const transcriber = useTranscriber()

  return (
    <section className='py-24'>
      <div className='container max-w-7xl'>
        <div className='flex flex-col gap-6 sm:flex-row sm:items-center sm:justify-between'>
          <div className='flex-1'>
            <h1 className='text-5xl font-extrabold tracking-tight sm:text-7xl'>
              Multilingual Farmer Chatbot
            </h1>
            <p className='mt-1 ml-3'>Voice-enabled AI Assistant for Farmers</p>
          </div>
          <div className='flex-1'>
            <div className='flex items-center justify-between text-sm font-medium'>
              <span>
                {transcriber.modelLoadingProgress === 0 &&
                  !transcriber.isModelLoading &&
                  'Model not loaded'}
                {transcriber.isModelLoading &&
                  'Loading AI assistant to help your farm...'}
                {transcriber.modelLoadingProgress === 100 &&
                  !transcriber.isModelLoading &&
                  'Ready to help your farm!'}
              </span>

              <span>{transcriber.modelLoadingProgress.toFixed()}%</span>
            </div>

            <Progress
              className='mt-1 w-full rounded-lg'
              value={transcriber.modelLoadingProgress}
              max={1}
            />
          </div>
        </div>

        <div className='mt-8 flex flex-col gap-6 sm:flex-row'>
          <AudioManager transcriber={transcriber} />
          <Transcript transcriber={transcriber} />
        </div>
      </div>
    </section>
  )
}
